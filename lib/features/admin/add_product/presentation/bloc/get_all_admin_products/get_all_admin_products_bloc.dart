import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tele_store/core/serves/graphql/api_result.dart';
import 'package:tele_store/features/admin/add_product/data/models/get_all_product_response.dart';
import 'package:tele_store/features/admin/add_product/data/repos/product_admin_repo.dart';

part 'get_all_admin_products_event.dart';
part 'get_all_admin_products_state.dart';
part 'get_all_admin_products_bloc.freezed.dart';

class GetAllAdminProductsBloc
    extends Bloc<GetAllAdminProductsEvent, GetAllAdminProductsState> {
  GetAllAdminProductsBloc(this._repo)
      : super(const GetAllAdminProductsState.loading()) {
    on<FetchAllAdminProductsEvent>(getAllProducts);
  }

  final ProductAdminRepo _repo;

  FutureOr<void> getAllProducts(FetchAllAdminProductsEvent event,
      Emitter<GetAllAdminProductsState> emit) async {
    if (event.isloading) {
      emit(GetAllAdminProductsState.loading());
    }
    final result = await _repo.getAllProductssAdmin();
    result.when(success: (success) {
      if (success.productGetAllList.isEmpty) {
        emit(GetAllAdminProductsState.empty());
      } else {
        emit(GetAllAdminProductsState.success(
            productList: success.productGetAllList));
      }
    }, failure: (failure) {
      emit(GetAllAdminProductsState.error(error: failure));
    });
  }
}
