import 'package:equatable/equatable.dart';
import 'package:tele_store/features/admin/add_product/data/models/get_all_product_response.dart';

abstract class ProductsViewAllState extends Equatable {
  const ProductsViewAllState({
    required this.hasMoreData,
    required this.productsList,
  });

  final List<ProductGetAllModel> productsList;
  final bool hasMoreData;

  @override
  List<Object?> get props => [productsList, hasMoreData];
}

class ProductsViewAllInitialState extends ProductsViewAllState {
  const ProductsViewAllInitialState({
    required super.hasMoreData,
    required super.productsList,
  });
}

class ProductsViewAllLoadingState extends ProductsViewAllState {
  const ProductsViewAllLoadingState({
    required super.hasMoreData,
    required super.productsList,
  });
}

class ProductsViewAllSuccessState extends ProductsViewAllState {
  const ProductsViewAllSuccessState({
    required super.hasMoreData,
    required super.productsList,
  });
}

class ProductsViewAllErrorState extends ProductsViewAllState {
  const ProductsViewAllErrorState({
    required this.error,
    required super.hasMoreData,
    required super.productsList,
  });

  final String error;

  @override
  List<Object?> get props => [error];
}
