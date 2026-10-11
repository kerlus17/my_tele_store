import 'package:tele_store/core/serves/graphql/api_result.dart';
import 'package:tele_store/core/utils/app_strings.dart';
import 'package:tele_store/features/admin/users/data/data_source/users_data_source.dart';
import 'package:tele_store/features/admin/users/data/models/get_all_users_response.dart';

class UsersRepo {
  const UsersRepo(this._dataSource);

  final UsersDataSource _dataSource;

  Future<ApiResult<GetAllUsersResponse>> getAllUsers() async {
    try {
      final response = await _dataSource.getAllUsers();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(errmsg);
    }
  }

  Future<ApiResult<void>> deleteUser({required String userId}) async {
    try {
      final res = await _dataSource.deleteUser(userId: userId);
      return ApiResult.success(res);
    } catch (e) {
      return const  ApiResult.failure(errmsg);
    }
  }
}
