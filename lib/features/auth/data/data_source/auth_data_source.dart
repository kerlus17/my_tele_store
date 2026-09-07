import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:tele_store/core/serves/graphql/api_service.dart';
import 'package:tele_store/core/serves/graphql/qraphql_queries/aurh/auth_queries.dart';
import 'package:tele_store/features/auth/data/models/auth_login_response.dart';
import 'package:tele_store/features/auth/data/models/login_request_body.dart';
import 'package:tele_store/features/auth/data/models/user_role_response.dart';

class AuthDataSource {
  const AuthDataSource(this._graphql);

  final ApiService _graphql;

  //Login
  Future<LoginResponse> login({required LoginRequestBody body}) async {
    final response = await _graphql.login(
      AuthQueries().loginMapQuery(body: body),
    );
    return response;
  }

  Future<UserRoleResponse> userRole(String token) async {
    final dio = Dio();
    dio.options.headers['Authorization'] = 'Bearer $token';
    final client = ApiService(dio);
    final response = await client.userRole();
    debugPrint('User Role Response: ${response.userRole}, User ID: ${response.userId}');
    return response;
  }



}
