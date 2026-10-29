import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tele_store/core/serves/graphql/api_result.dart';
import 'package:tele_store/features/customer/product_details/data/models/product_details_response.dart';
import 'package:tele_store/features/customer/product_details/data/repo/product_details_repo.dart';

part 'product_details_event.dart';
part 'product_details_state.dart';
part 'product_details_bloc.freezed.dart';

class ProductDetailsBloc
    extends Bloc<ProductDetailsEvent, ProductDetailsState> {
  ProductDetailsBloc(this._repo) : super(const ProductDetailsState.loading()) {
    on<FetchDetailsProductEvrnt>(_productdetails);
  }

  final ProductDetailsRepo _repo;

  FutureOr<void> _productdetails(
    FetchDetailsProductEvrnt event,
    Emitter<ProductDetailsState> emit,
  ) async {
    emit(const ProductDetailsState.loading());

    final result = await _repo.productDetails(id: event.productId);

    result.when(
      success: (data) {
        emit(
          ProductDetailsState.success(
            product: data.data.productModel,
          ),
        );
      },
      failure: (error) {
        emit(ProductDetailsState.error(error: error));
      },
    );
  }
}
