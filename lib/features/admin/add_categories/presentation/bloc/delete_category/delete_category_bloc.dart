import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tele_store/core/serves/graphql/api_result.dart';
import 'package:tele_store/features/admin/add_categories/data/repos/categories_admin_repo.dart';

part 'delete_category_event.dart';
part 'delete_category_state.dart';
part 'delete_category_bloc.freezed.dart';

class DeleteCategoryBloc
    extends Bloc<DeleteCategoryEvent, DeleteCategoryState> {
  DeleteCategoryBloc(this._repo) : super(_Initial()) {
    on<RemoveCategoryEvent>(_deleteCategory);
  }

  final CategoriesAdminRepo _repo;

  FutureOr<void> _deleteCategory(
    RemoveCategoryEvent event,
    Emitter<DeleteCategoryState> emit,
  ) async {
    emit(DeleteCategoryState.loading(categoryId: event.CategoryId));
    final response = await _repo.deleteCategory(categoryId: event.CategoryId);
    response.when(
      success: (success) {
        emit(DeleteCategoryState.success());
      },
      failure: (failure) {
        emit(DeleteCategoryState.error(error: failure));
      },
    );
  }
}
