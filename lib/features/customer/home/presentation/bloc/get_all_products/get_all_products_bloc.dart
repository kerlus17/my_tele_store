import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tele_store/core/serves/graphql/api_result.dart';
import 'package:tele_store/features/admin/add_product/data/models/get_all_product_response.dart';
import 'package:tele_store/features/customer/home/data/repo/home_repo.dart';

part 'get_all_products_event.dart';
part 'get_all_products_state.dart';
part 'get_all_products_bloc.freezed.dart';

class GetAllProductsBloc
    extends Bloc<GetAllProductsEvent, GetAllProductsState> {
  GetAllProductsBloc(this._repo) : super(const GetAllProductsState.loading()) {
    on<FetchProductssEvent>(getProducts);
  }

  final HomeRepo _repo;
  bool isProductsLessThan10 = false;

  FutureOr<void> getProducts(
    FetchProductssEvent event,
    Emitter<GetAllProductsState> emit,
  ) async {
    final result = await _repo.getAllProducts();
    result.when(
      success: (data) {
        isProductsLessThan10 = data.productGetAllList.length <= 10;

        if (data.productGetAllList.isEmpty) {
          emit(const .empty());
        } else {
          emit(
            GetAllProductsState.success(productsList: data.productGetAllList),
          );
        }
      },
      failure: (error) {
        emit(GetAllProductsState.error(error: error));
      },
    );
  }
}
