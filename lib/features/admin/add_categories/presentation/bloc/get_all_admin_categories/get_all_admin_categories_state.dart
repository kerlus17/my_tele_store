part of 'get_all_admin_categories_bloc.dart';

@freezed
class GetAllAdminCategoriesState with _$GetAllAdminCategoriesState {
  const factory GetAllAdminCategoriesState.loading() = LoadinState;
  const factory GetAllAdminCategoriesState.success({
    required CategoriesGetAllResponse categoriesModel,
  }) = SuccessState;
  const factory GetAllAdminCategoriesState.error({required String error}) =
      ErrorState;
  const factory GetAllAdminCategoriesState.empty() = EmptyState;
}
