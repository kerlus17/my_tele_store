import 'package:tele_store/core/serves/push_notifications/firebase_claud_messenging.dart';

class AddNotificationDataSource {
  Future<void> sendNotifications({
    required String body,
    required String title,
    required int productId,
  }) async {
    final response = await FirebaseCloudMessaging.instance.sendNotification(
      body: body,
      title: title,
      productId:productId.toString() ,
    );
    return response;
  }
}