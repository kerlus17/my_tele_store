import 'package:tele_store/core/serves/graphql/api_service.dart';
import 'package:tele_store/core/serves/graphql/qraphql_queries/admin/users_queries.dart';
import 'package:tele_store/features/admin/users/data/models/get_all_users_response.dart';

class UsersDataSource {
  const UsersDataSource(this._graphql);

  final ApiService _graphql;

  //Get Number of Products
  Future<GetAllUsersResponse> getAllUsers() async {
    final response = await _graphql
        .getAllUsers(UsersQueries().getAllUsersQuery());
    return response;
  }


   Future<void> deleteUser({required String userId}) async {
    final response = await _graphql
        .deleteUser(UsersQueries().deleteUser(userId: userId));
    return response;
  }
}