part of 'product_details_bloc.dart';

@freezed
class ProductDetailsEvent with _$ProductDetailsEvent {
  const factory ProductDetailsEvent.started() = _Started;
  const factory ProductDetailsEvent.fetchDetailsProduct({
    required int productId,
  }) = FetchDetailsProductEvrnt;
}
