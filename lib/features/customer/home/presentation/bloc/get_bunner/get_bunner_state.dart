part of 'get_bunner_bloc.dart';

@freezed
class GetBunnerState with _$GetBunnerState {
  const factory GetBunnerState.loading() = LoadingState;
  const factory GetBunnerState.success({
    required List<String> imageBannerList,
  }) = SuccessState;
  const factory GetBunnerState.empty() = EmptyState;
  const factory GetBunnerState.error({required String error}) = ErrorState;
}
