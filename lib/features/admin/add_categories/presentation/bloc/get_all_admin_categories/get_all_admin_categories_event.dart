part of 'get_all_admin_categories_bloc.dart';

@freezed
class GetAllAdminCategoriesEvent with _$GetAllAdminCategoriesEvent {
  const factory GetAllAdminCategoriesEvent.started() = _Started;
  const factory GetAllAdminCategoriesEvent.getAllAdminCategories({required bool isloading}) =
      GetAllCategoriesEvent;
}
