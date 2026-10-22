import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tele_store/core/serves/graphql/api_result.dart';
import 'package:tele_store/features/admin/add_categories/data/models/get_all_categories_response.dart';
import 'package:tele_store/features/customer/home/data/repo/home_repo.dart';

part 'get_all_categories_event.dart';
part 'get_all_categories_state.dart';
part 'get_all_categories_bloc.freezed.dart';

class GetAllCategoriesBloc
    extends Bloc<GetAllCategoriesEvent, GetAllCategoriesState> {
  GetAllCategoriesBloc(this._repo)
    : super(const GetAllCategoriesState.loading()) {
    on<FetchCategoriesEvent>(getCategories);
  }

  final HomeRepo _repo;

  FutureOr<void> getCategories(
    FetchCategoriesEvent event,
    Emitter<GetAllCategoriesState> emit,
  ) async {
    final result = await _repo.getAllCategories();
    result.when(
      success: (data) {
        if (data.categoriesGetAlls.isEmpty) {
          emit(const .empty());
        } else {
          emit(
            GetAllCategoriesState.success(categories: data.categoriesGetAlls),
          );
        }
      },
      failure: (error) {
        emit(GetAllCategoriesState.error(error: error));
      },
    );
  }
}
