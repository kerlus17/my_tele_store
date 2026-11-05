part of 'add_product_to_cart_bloc.dart';

@freezed
class AddProductToCartEvent with _$AddProductToCartEvent {
  const factory AddProductToCartEvent.started() = _Started;
  const factory AddProductToCartEvent.addProduct({
    required ProductGetAllModel product,
    required int quantity,
    required int productId,
  }) = AddNewProductCartEvent;
}
