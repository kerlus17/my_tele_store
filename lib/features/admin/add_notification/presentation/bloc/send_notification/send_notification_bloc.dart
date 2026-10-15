import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tele_store/core/serves/graphql/api_result.dart';
import 'package:tele_store/features/admin/add_notification/data/repo/add_notification_repo.dart';

part 'send_notification_event.dart';
part 'send_notification_state.dart';
part 'send_notification_bloc.freezed.dart';

class SendNotificationBloc
    extends Bloc<SendNotificationEvent, SendNotificationState> {
  SendNotificationBloc(this._repo) : super(const _Initial()) {
    on<NewSendNotificationsEvent>(send_notification);
  }

  FutureOr<void> send_notification(
    NewSendNotificationsEvent event,
    Emitter<SendNotificationState> emit,
  ) async {
    emit(SendNotificationState.loading(indexId: event.indexId));

    final result = await _repo.sendNotifications(
      title: event.title,
      body: event.body,
      productId: event.productId,
    );

    result.when(
      success: (_) {
        emit(const SendNotificationState.success());
      },
      failure: (error) {
        emit(SendNotificationState.error(error: error));
      },
    );
  }

  final AddNotificationRepo _repo;
}
