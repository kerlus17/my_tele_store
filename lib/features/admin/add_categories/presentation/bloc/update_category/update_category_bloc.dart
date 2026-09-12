import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tele_store/core/serves/graphql/api_result.dart';
import 'package:tele_store/features/admin/add_categories/data/models/update_category_request_body.dart';
import 'package:tele_store/features/admin/add_categories/data/repos/categories_admin_repo.dart';

part 'update_category_event.dart';
part 'update_category_state.dart';
part 'update_category_bloc.freezed.dart';

class UpdateCategoryBloc
    extends Bloc<UpdateCategoryEvent, UpdateCategoryState> {
  UpdateCategoryBloc(this._repo) : super(_Initial()) {
    on<UpdateOldCategoryEvent>(_updateCategory);
  }
  final CategoriesAdminRepo _repo;
  FutureOr<void> _updateCategory(
    UpdateOldCategoryEvent event,
    Emitter<UpdateCategoryState> emit,
  ) async {
    emit(UpdateCategoryState.loading());
    final response = await _repo.updateCategory(body: event.body);
    response.when(
      success: (success) {
        emit(UpdateCategoryState.success());
      },
      failure: (failure) {
        emit(UpdateCategoryState.error(error: failure));
      },
    );
  }
}
