part of 'delete_category_bloc.dart';

@freezed
class DeleteCategoryEvent with _$DeleteCategoryEvent {
  const factory DeleteCategoryEvent.started() = _Started;
  const factory DeleteCategoryEvent.removeCategory({required String CategoryId}) = RemoveCategoryEvent;
}
