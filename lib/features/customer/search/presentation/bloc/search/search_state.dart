part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.loading() = LoadingState;
  const factory SearchState.initial() = InitialState;
  const factory SearchState.success({
    required List<ProductGetAllModel> productsList,
  }) = SuccessState;
  const factory SearchState.empty() = EmptyState;
  const factory SearchState.error({required String error}) = ErrorState;
}
