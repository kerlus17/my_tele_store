import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tele_store/core/serves/graphql/api_result.dart';
import 'package:tele_store/features/admin/add_categories/data/models/get_all_categories_response.dart';
import 'package:tele_store/features/admin/add_categories/data/repos/categories_admin_repo.dart';

part 'get_all_admin_categories_event.dart';
part 'get_all_admin_categories_state.dart';
part 'get_all_admin_categories_bloc.freezed.dart';

class GetAllAdminCategoriesBloc
    extends Bloc<GetAllAdminCategoriesEvent, GetAllAdminCategoriesState> {
  GetAllAdminCategoriesBloc(this._repo)
    : super(GetAllAdminCategoriesState.loading()) {
    on<GetAllCategoriesEvent>(_getAllAdminCategories);
  }
  final CategoriesAdminRepo _repo;

  FutureOr<void> _getAllAdminCategories(
    GetAllCategoriesEvent event,
    Emitter<GetAllAdminCategoriesState> emit,
  ) async {
    if (event.isloading) {
      emit(GetAllAdminCategoriesState.loading());
    }

    final response = await _repo.getAllCategoriesAdmin();
    response.when(
      success: (success) {
        if (success.categoriesGetAlls.isEmpty) {
          emit(GetAllAdminCategoriesState.empty());
        } else {
          emit(GetAllAdminCategoriesState.success(categoriesModel: success));
        }
      },
      failure: (failure) {
        emit(GetAllAdminCategoriesState.error(error: failure));
      },
    );
  }
}
