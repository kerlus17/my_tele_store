part of 'get_bunner_bloc.dart';

@freezed
class GetBunnerEvent with _$GetBunnerEvent {
  const factory GetBunnerEvent.started() = _Started;
  const factory GetBunnerEvent.fetchBunner() = FetchBunnerEvent;
}