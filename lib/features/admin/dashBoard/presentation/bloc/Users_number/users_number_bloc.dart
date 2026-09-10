import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tele_store/core/serves/graphql/api_result.dart';
import 'package:tele_store/features/admin/dashBoard/data/repos/dashBoard_repo.dart';

part 'users_number_event.dart';
part 'users_number_state.dart';
part 'users_number_bloc.freezed.dart';

class UsersNumberBloc extends Bloc<UsersNumberEvent, UsersNumberState> {
  UsersNumberBloc(this._repo) : super(const UsersNumberState.loading()) {
    on<GetUsersNumberEvent>(_getUsersNumber);
  }

  final DashBoardRepo _repo;

  FutureOr<void> _getUsersNumber(
    GetUsersNumberEvent event,
    Emitter<UsersNumberState> emit,
  ) async {
    emit(const UsersNumberState.loading());

    final result = await _repo.numberOfUsers();

    result.when(
      success: (productsData) {
        emit(
          UsersNumberState.success(
            numbers: productsData.usersNumbers,
          ),
        );
      },
      failure: (error) {
        emit(UsersNumberState.error(error: error));
      },
    );
  }
}
