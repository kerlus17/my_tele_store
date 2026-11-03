import 'package:tele_store/core/serves/graphql/api_result.dart';
import 'package:tele_store/core/utils/app_strings.dart';
import 'package:tele_store/features/admin/add_notification/data/data_source/add_notification_data_source.dart';

class AddNotificationRepo {
  const AddNotificationRepo(this._dataSource);

  final AddNotificationDataSource _dataSource;

  Future<ApiResult<void>> sendNotifications({
    required String title,
    required String body,
    required int productId,
  }) async {
    try {
      final response = await _dataSource.sendNotifications(
        body: body,
        productId: productId,
        title: title,
      );
      return ApiResult.success(response);
    } catch (e) {
      return const ApiResult.failure(errmsg);
    }
  }

  Future<void> addNotificationsToAllUsersFirebase({
    required String body,
    required String title,
    required int productId,
  }) async {
    await _dataSource.addNotificationsToAllUsersFirebase(
      body: body,
      title: title,
      productId: productId,
    );
  }
}
