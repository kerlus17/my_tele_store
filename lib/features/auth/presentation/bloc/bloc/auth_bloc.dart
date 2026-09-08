import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tele_store/core/serves/graphql/api_result.dart';
import 'package:tele_store/core/serves/shared_pref/pref_keys.dart';
import 'package:tele_store/core/serves/shared_pref/shared_pref.dart';
import 'package:tele_store/features/auth/data/models/login_request_body.dart';
import 'package:tele_store/features/auth/data/models/sign_up_request.dart';
import 'package:tele_store/features/auth/data/repos/auth_repos.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._repo) : super(_Initial()) {
    on<LoginEvent>(login);
    on<SignUpEvent>(signup);
  }

  final AuthRepos _repo;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  final formkey = GlobalKey<FormState>();

  FutureOr<void> login(LoginEvent event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());

    final result = await _repo.login(
      LoginRequestBody(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      ),
    );

    await result.when(
      success: (success) async {
        await SharedPref().setString(
          prefKeys.accessToken,
          success.data?.login?.accessToken ?? '',
        );

        final user = await _repo.UserRole(
          success.data?.login?.accessToken ?? '',
        );

        await SharedPref().setInt(
          prefKeys.userId,
          user.userId ?? 0,
        );

        await SharedPref().setString(
          prefKeys.userRole,
          user.userRole ?? '',
        );

        emit(AuthState.success(userRole: user.userRole ?? ''));
      },
      failure: (failure) async {
        emit(AuthState.error(error: failure));
      },
    );
  }

  FutureOr<void> signup(SignUpEvent event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());

    final result = await _repo.signUp(
      SignUpRequestBody(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
        avatar: event.imgUrl,
        name: nameController.text.trim(),
      ),
    );

    result.when(
      success: (success) {
        add(const AuthEvent.login());
      },
      failure: (error) {
        emit(AuthState.error(error: error));
      },
    );
  }
}
