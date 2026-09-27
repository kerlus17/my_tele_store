import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tele_store/core/serves/graphql/api_result.dart';
import 'package:tele_store/features/admin/add_product/data/models/create_product_request_body.dart';
import 'package:tele_store/features/admin/add_product/data/repos/product_admin_repo.dart';

part 'create_product_event.dart';
part 'create_product_state.dart';
part 'create_product_bloc.freezed.dart';

class CreateProductBloc extends Bloc<CreateProductEvent, CreateProductState> {
  CreateProductBloc(this._repo) : super(const CreateProductState.initial()) {
    on<CreateNewProductEvent>(_createNewProduct);
  }

  final ProductAdminRepo _repo;

  FutureOr<void> _createNewProduct(
      CreateNewProductEvent event, Emitter<CreateProductState> emit) async {
    emit(CreateProductState.loading());
    final result = await _repo.createProduct(event.body);

    result.when(success: (success) {
      emit(const CreateProductState.success());
    }, failure: (failure) {
      emit(CreateProductState.error(error: failure));
    });
  }
}
