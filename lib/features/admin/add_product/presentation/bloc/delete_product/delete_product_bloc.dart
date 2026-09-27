import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tele_store/core/serves/graphql/api_result.dart';
import 'package:tele_store/features/admin/add_product/data/repos/product_admin_repo.dart';

part 'delete_product_event.dart';
part 'delete_product_state.dart';
part 'delete_product_bloc.freezed.dart';

class DeleteProductBloc extends Bloc<DeleteProductEvent, DeleteProductState> {
  DeleteProductBloc(this._repo) : super(const DeleteProductState.initial()) {
    on<DeleteproductByIdEvent>(_deletePro);
  }
  final ProductAdminRepo _repo;

  FutureOr<void> _deletePro(
      DeleteproductByIdEvent event, Emitter<DeleteProductState> emit) async {
    emit(DeleteProductState.loading(id: event.id));
    final result = await _repo.deleteProduct(id: event.id);
    result.when(success: (success) {
      emit(DeleteProductState.success());
    }, failure: (failure) {
      emit(DeleteProductState.error(errMsg: failure));
    });
  }
}
