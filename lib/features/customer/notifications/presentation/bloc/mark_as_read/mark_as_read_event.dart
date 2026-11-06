part of 'mark_as_read_bloc.dart';

@freezed
class MarkAsReadEvent with _$MarkAsReadEvent {
  const factory MarkAsReadEvent.started() = _Started;
  const factory MarkAsReadEvent.markAsRead() = MarkAllEvent;
}
