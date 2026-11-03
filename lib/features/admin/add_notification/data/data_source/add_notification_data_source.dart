import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tele_store/core/extentions/string_extension.dart';
import 'package:tele_store/core/serves/push_notifications/firebase_claud_messenging.dart';
import 'package:tele_store/core/utils/app_strings.dart';
import 'package:tele_store/core/utils/app_values.dart';
import 'package:tele_store/features/customer/notifications/data/models/notification_model.dart';

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




  Future<void> addNotificationsToAllUsersFirebase({
  required String body,
  required String title,
  required int productId,
}) async {
  final notificationId = AppValues.randomStringId;
  const createAt = '';

  final users = FirebaseFirestore.instance.collection(usersCollection);

  final usersGet = await users.get();

  for (final doc in usersGet.docs) {
    await users
        .doc(doc.id)
        .collection(notificationCollection)
        .doc(notificationId)
        .set(
          NotificationModel(
            body: body,
            title: title,
            productId: productId,
            isSeen: false,
            createdAt: createAt.convertDataFormate(),
            notificationId: notificationId,
          ).toJson(),
        );
  }
}

}