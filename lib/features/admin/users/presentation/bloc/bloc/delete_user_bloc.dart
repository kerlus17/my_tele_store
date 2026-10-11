import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tele_store/core/serves/graphql/api_result.dart';
import 'package:tele_store/features/admin/users/data/repo/users_repo.dart';

part 'delete_user_event.dart';
part 'delete_user_state.dart';
part 'delete_user_bloc.freezed.dart';

class DeleteUserBloc extends Bloc<DeleteUserEvent, DeleteUserState> {
  DeleteUserBloc(this._userRepo) : super(const DeleteUserState.initial()) {
    on<DeletedEvent>(_deleteUser);
  }

  final UsersRepo _userRepo;
  FutureOr<void> _deleteUser(
      DeletedEvent event, Emitter<DeleteUserState> emit) async {
    emit(DeleteUserState.loading(id: event.userId));
    final result = await _userRepo.deleteUser(userId: event.userId);
    result.when(success: (res) {
      emit(const DeleteUserState.success());
    }, failure: (error) {
      emit(DeleteUserState.failure(error));
    });
  }
}
