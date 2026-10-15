import 'package:tele_store/core/serves/graphql/api_result.dart';
import 'package:tele_store/core/utils/app_strings.dart';
import 'package:tele_store/features/auth/data/models/user_role_response.dart';
import 'package:tele_store/features/customer/profile/data/data_source/profile_data_source.dart';

class ProfileRepo {
  const ProfileRepo(this._dataSource);

  final ProfileDataSource _dataSource;

  Future<ApiResult<UserRoleResponse>> getUserProfile() async {
    try {
      final response = await _dataSource.getUserInfo();
      return ApiResult.success(response);
    } catch (e) {
      return const ApiResult.failure(errmsg);
    }
  }
}
