import 'package:tele_store/core/serves/graphql/api_service.dart';
import 'package:tele_store/features/auth/data/models/user_role_response.dart';

class ProfileDataSource {
  const ProfileDataSource(this._api);

  final ApiService _api;

  Future<UserRoleResponse> getUserInfo() async {
    final response = await _api.userRole();
    return response;
  }
}
