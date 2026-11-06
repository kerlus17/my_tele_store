part of 'mark_as_read_bloc.dart';

@freezed
class MarkAsReadState with _$MarkAsReadState {
  const factory MarkAsReadState.initial() = _Initial;
  const factory MarkAsReadState.error({required String error}) = ErrorState;

  const factory MarkAsReadState.Success() = SuccessState;

  const factory MarkAsReadState.loading() = LoadingState;
}
