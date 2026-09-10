import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tele_store/core/serves/graphql/api_result.dart';
import 'package:tele_store/features/admin/dashBoard/data/repos/dashBoard_repo.dart';

part 'products_number_event.dart';
part 'products_number_state.dart';
part 'products_number_bloc.freezed.dart';

class ProductsNumberBloc
    extends Bloc<ProductsNumberEvent, ProductsNumberState> {
  ProductsNumberBloc(this._repo) : super(ProductsNumberState.loading()) {
    on<GetProductsNumberEvent>(_getProductsNumber);
  }

  DashBoardRepo _repo;

  FutureOr<void> _getProductsNumber(
    GetProductsNumberEvent event,
    Emitter<ProductsNumberState> emit,
  ) async {
        emit( const ProductsNumberState.loading());

    final result = await _repo.numberOfProducts();
    result.when(
      success: (success) {
        emit(ProductsNumberState.success(numbers: success.produtcsNumbers));
      },
      failure: (failure) {
        emit(ProductsNumberState.error(error: failure));
      },
    );
  }
}
