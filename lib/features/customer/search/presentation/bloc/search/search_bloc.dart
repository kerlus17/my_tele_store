import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tele_store/core/serves/graphql/api_result.dart';
import 'package:tele_store/features/admin/add_product/data/models/get_all_product_response.dart';
import 'package:tele_store/features/customer/search/data/models/search_request_body.dart';
import 'package:tele_store/features/customer/search/data/repo/search_repo.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc(this._repo) : super(const SearchState.initial()) {
    on<FetchedProductsEvent>(_getProducts);
  }

  FutureOr<void> _getProducts(
    FetchedProductsEvent event,
    Emitter<SearchState> emit,
  ) async {
    emit(const SearchState.loading());

    final result = await _repo.searchProduct(body: event.searchbody);

    result.when(
      success: (data) {
        if (data.productGetAllList.isEmpty) {
          emit(const SearchState.empty());
        } else {
          emit(SearchState.success(productsList: data.productGetAllList));
        }
      },
      failure: (error) {
        emit(SearchState.error(error: error));
      },
    );
  }

  final SearchRepo _repo;
}
