import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tele_store/core/serves/graphql/api_result.dart';
import 'package:tele_store/features/auth/data/models/user_role_response.dart';
import 'package:tele_store/features/customer/profile/data/repo/profile_repo.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(this._repo) : super(const ProfileState.loading()) {
    on<GetUserInfoEvent>(getUserInfo);
  }

  FutureOr<void> getUserInfo(
    GetUserInfoEvent event,
    Emitter<ProfileState> emit,
  ) async {
    emit(const ProfileState.loading());

    final result = await _repo.getUserProfile();

    result.when(
      success: (userInfo) {
        emit(ProfileState.success(userInfoModel: userInfo));
      },
      failure: (error) {
        emit(ProfileState.errror(error: error));
      },
    );
  }

  final ProfileRepo _repo;
}
