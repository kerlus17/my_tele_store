import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tele_store/core/serves/hive/hive_database.dart';
import 'package:tele_store/features/admin/add_notification/data/models/add_notification_model.dart';

part 'add_notification_event.dart';
part 'add_notification_state.dart';
part 'add_notification_bloc.freezed.dart';

class AddNotificationBloc
    extends Bloc<AddNotificationEvent, AddNotificationState> {
  AddNotificationBloc() : super(AddNotificationState.initial()) {
    on<AddNewNotificationEvent>(create_notification);
    on<DeleteNNotificationEvent>(delete);
  }

  FutureOr<void> create_notification(
    AddNewNotificationEvent event,
    Emitter<AddNotificationState> emit,
  ) {
    emit(AddNotificationState.loading());
    try {
      HiveDatabase().notificationBox!.add(event.notification);
      emit(AddNotificationState.success());
    } catch (e) {
      emit(
        AddNotificationState.error(message: 'Failed to create notification'),
      );
    }
  }

  FutureOr<void> delete(
    DeleteNNotificationEvent event,
    Emitter<AddNotificationState> emit,
  ) {
    emit(AddNotificationState.loading());
    try {
      HiveDatabase().notificationBox!.delete(event.notification);
      emit(AddNotificationState.success());
    } catch (e) {
      emit(
        AddNotificationState.error(message: 'Failed to delete notification'),
      );
    }
  }
}
