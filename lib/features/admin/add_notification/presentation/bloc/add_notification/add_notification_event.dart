part of 'add_notification_bloc.dart';

@freezed
class AddNotificationEvent with _$AddNotificationEvent {
  const factory AddNotificationEvent.started() = _Started;
    const factory AddNotificationEvent.addNewNotification({required AddNotificationModel notification}) = AddNewNotificationEvent;
    const factory AddNotificationEvent.deleteNewNotification({required AddNotificationModel notification}) = DeleteNNotificationEvent;

}