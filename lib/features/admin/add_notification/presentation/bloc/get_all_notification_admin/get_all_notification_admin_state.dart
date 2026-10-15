part of 'get_all_notification_admin_bloc.dart';

@freezed
class GetAllNotificationAdminState with _$GetAllNotificationAdminState {
  const factory GetAllNotificationAdminState.empty() = EmptyState;
    const factory GetAllNotificationAdminState.error({required String message}) = ErrorState;
  const factory GetAllNotificationAdminState.success({required List<AddNotificationModel> notifications}) = SuccessState;
    const factory GetAllNotificationAdminState.loading() = LoadingState;


}
