import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tele_store/core/serves/hive/hive_database.dart';
import 'package:tele_store/features/admin/add_notification/data/models/add_notification_model.dart';

part 'get_all_notification_admin_event.dart';
part 'get_all_notification_admin_state.dart';
part 'get_all_notification_admin_bloc.freezed.dart';

class GetAllNotificationAdminBloc
    extends Bloc<GetAllNotificationAdminEvent, GetAllNotificationAdminState> {
  GetAllNotificationAdminBloc()
    : super(const GetAllNotificationAdminState.loading()) {
    on<FetchNotificationEvent>(fetchAllNotification);
  }

  FutureOr<void> fetchAllNotification(
    FetchNotificationEvent event,
    Emitter<GetAllNotificationAdminState> emit,
  ) {
    try {
      if (event.loading) {
        emit(const GetAllNotificationAdminState.loading());
      }

      final notifications = HiveDatabase().notificationBox!.values.toList();

      if (notifications.isEmpty) {
        emit(const GetAllNotificationAdminState.empty());
      } else {
        emit(
          GetAllNotificationAdminState.success(notifications: notifications),
        );
      }
    } catch (e) {
      emit(GetAllNotificationAdminState.error(message: e.toString()));
    }
  }
}
