import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tele_store/core/serves/graphql/api_result.dart';
import 'package:tele_store/features/admin/add_product/data/models/update_product_request_body.dart';
import 'package:tele_store/features/admin/add_product/data/repos/product_admin_repo.dart';

part 'update_product_event.dart';
part 'update_product_state.dart';
part 'update_product_bloc.freezed.dart';

class UpdateProductBloc extends Bloc<UpdateProductEvent, UpdateProductState> {
  UpdateProductBloc(this._repo) : super(const UpdateProductState.initial()) {
    on<EditProductEvent>(_updatePro);
  }

  FutureOr<void> _updatePro(
      EditProductEvent event, Emitter<UpdateProductState> emit) async {
    emit(UpdateProductState.loading());
    final res = await _repo.updateProduct(body: event.body);

    res.when(success: (success) {
      emit(UpdateProductState.success());
    }, failure: (failure) {
      emit(UpdateProductState.error(msg: failure));
    });
  }

  final ProductAdminRepo _repo;
}
