import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/widgets.dart';
import 'package:tele_store/core/di/injection_container.dart';
import 'package:tele_store/core/extentions/context_extension.dart';
import 'package:tele_store/core/routes/app_routes.dart';
import 'package:tele_store/core/serves/push_notifications/local_notification.dart';

class FirebaseMessagingNavigate {
  // forground
  static Future<void> forGroundHandler(RemoteMessage? message) async {
    if (message != null) {
      await LocalNotificationService.showSimpleNotification(
        title: message.notification!.title ?? '',
        body: message.notification!.body ?? '',
        payload: message.data['productId'].toString(),
      );
    }
  }

  // background
  static void backGroundHandler(RemoteMessage? message) {
    if (message != null) {
      _navigate(message);
    }
  }

  // terminated
  static void terminatedHandler(RemoteMessage? message) {
    if (message != null) {
      _navigate(message);
    }
  }

  static void _navigate(RemoteMessage message) {
    if (message.data['productId'] == null ||
        int.tryParse(message.data['productId'].toString()) == -1) {
      return;
    }
    sl<GlobalKey<NavigatorState>>().currentState!.context.pushName(
      AppRoutes.Productdetails,
      arguments: int.parse(message.data['productId'].toString()),
    );
  }
}
