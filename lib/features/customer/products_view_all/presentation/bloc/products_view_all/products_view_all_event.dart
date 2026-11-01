import 'package:equatable/equatable.dart';

abstract class ProductsViewAllEvent extends Equatable {
  const ProductsViewAllEvent();

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class GetProductsViewAllEvent extends ProductsViewAllEvent {
  const GetProductsViewAllEvent();
}

class LoadMoreProductsEvent extends ProductsViewAllEvent {
  const LoadMoreProductsEvent();
}
