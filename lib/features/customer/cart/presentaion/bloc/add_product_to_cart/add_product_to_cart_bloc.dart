import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tele_store/core/serves/graphql/api_result.dart';
import 'package:tele_store/core/serves/shared_pref/pref_keys.dart';
import 'package:tele_store/core/serves/shared_pref/shared_pref.dart';
import 'package:tele_store/features/admin/add_product/data/models/get_all_product_response.dart';
import 'package:tele_store/features/customer/cart/data/repo/cart_repo.dart';

part 'add_product_to_cart_event.dart';
part 'add_product_to_cart_state.dart';
part 'add_product_to_cart_bloc.freezed.dart';

class AddProductToCartBloc
    extends Bloc<AddProductToCartEvent, AddProductToCartState> {
  AddProductToCartBloc(this._repo) : super(AddProductToCartState.initial()) {
    on<AddNewProductCartEvent>(getAllProducts);
  }

  final cartRepo _repo;

  Future<void> getAllProducts(
    AddNewProductCartEvent event,
    Emitter<AddProductToCartState> emit,
  ) async {
    emit(AddProductToCartState.loading(indexId: event.productId));
    final userId = await SharedPref().getInt(prefKeys.userId).toString();
    final result = await _repo.addProductToCart(
      product: event.product,
      userId: userId,
    );
    result.when(
      success: (data) {
        emit(AddProductToCartState.success());
      },
      failure: (error) {
        emit(AddProductToCartState.error(error: error));
      },
    );
  }
}
