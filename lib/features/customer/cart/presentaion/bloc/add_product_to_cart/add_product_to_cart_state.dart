part of 'add_product_to_cart_bloc.dart';

@freezed
class AddProductToCartState with _$AddProductToCartState {
  const factory AddProductToCartState.initial() = _Initial;
  const factory AddProductToCartState.loading({required int indexId}) =
      LoadingState;
  const factory AddProductToCartState.success() = SuccessState;
  const factory AddProductToCartState.error({required String error}) =
      ErrorState;
}
