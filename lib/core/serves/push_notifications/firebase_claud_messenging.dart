import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:googleapis_auth/auth_io.dart' as auth;

class FirebaseCloudMessaging {
  FirebaseCloudMessaging._();
  static final FirebaseCloudMessaging instance = FirebaseCloudMessaging._();
  static const String _SubscribeKey = "tele_store";
  bool isPermisionNotification = false;
  ValueNotifier<bool> isNotificationSubscribe = ValueNotifier<bool>(true);

  Future<void> init() async {
    await permisionNotification();
  }

  Future<void> controllerForUserSubscribe() async {
    if (isPermisionNotification == false) {
      await permisionNotification();
    } else {
      if (isNotificationSubscribe.value == false) {
        await _subscribeNotification();
      } else {
        await _unSubscribeNotification();
      }
    }
  }

  Future<void> _subscribeNotification() async {
    await FirebaseMessaging.instance.subscribeToTopic(_SubscribeKey);
    isNotificationSubscribe.value = true;
    debugPrint('🔔_____  Subscribed to topic: $_SubscribeKey ______🔔 ');
  }

  Future<void> _unSubscribeNotification() async {
    await FirebaseMessaging.instance.unsubscribeFromTopic(_SubscribeKey);
    isNotificationSubscribe.value = false;
    debugPrint('🔔_____  Unsubscribed from topic: $_SubscribeKey ______🔔 ');
  }

  Future<void> permisionNotification() async {
    NotificationSettings notificationSettings = await FirebaseMessaging.instance
        .requestPermission(provisional: true);

    if (notificationSettings.authorizationStatus ==
        AuthorizationStatus.authorized) {
      debugPrint('User granted permission ______🔔');
      isPermisionNotification = true;
      await _subscribeNotification();
    } else {
      debugPrint('User denied permission ______🔔');
      isPermisionNotification = false;
      isNotificationSubscribe.value = false;
    }
  }

  Future<String?> _getAccessToken() async {
    final serviceAccountJson = {
      "type": "service_account",
      "project_id": "tele-5d291",
      "private_key_id": "be0a9c32b0bfaa60f0edc8f03c8f5e5ff2be7801",
      "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQC+mslYICRBGIuK\n1da9NEfm9PXFi9PgJBuc9S5SH7NC4CgWzLCY1A8KqAO6zpAqmWLfR2iyQA18AVyj\n8GESKXZkt//qEdva0hU3AW6Mly2bVPBmt/95y/wPfO3Qki/ngIMjTqwx6UI8SOVU\nPz3eGdFTlgUFxx4sQaYWtjhn3fKOUYJZwAXRhEgdXwKHdZjMiMM0jXtteGIjihqV\ncojwoKuUTPmE1wtHc9UM3SkpQCznVzob7vEl89e+GZ7q3+QeIQYHX3/Vr0yp7794\nyEMpBWZCnPudwD5nVa7gwHU94+XfFeh6IRdVUfZzF1OET/DcR3Aqa9EG7VwlmVrX\npTEN0eq7AgMBAAECggEAT3XlEX2Yz6CFcBQ0yTz16sVdfoUMB8nVzynxrR/1EiCz\n5clgp93kBWvE3kiGFpRKgU3aSlFkrbk9n0Szmyg46MVChZj7YG6rlHpe1XKi+zo+\nXHxBn8uX4fcRh52iJe9P/FSsecRGLi6vmF8jEigOObv1jRKVNBsMPDSsMDT5jTWa\nQL8ogO+s6MAyW1wEbD2qldFAS3T3HSHVq9GQxdCepiV4ICMmF7QoNBtezkCea/F6\niLOtja50+2FNywxkgHvgLxvz1wk1/qsPWvWFgDPpyQZHoFxN9PEcM0ZBYXiKURLz\n94+L4v0atAAbaue/nn+tuG+MW0ZpXvAPx5hD6850WQKBgQDr0gQ9raK87wvLdAZp\nujhjV/thv6/HHZAKaKi/NaNU3Jiinv7hRO5ntmz427qp+cE079ZpAKyQDHG1C7lG\ney+k8yd6aEZGJdc0EDRXO5nQKo+LngGKNs+sanhZURXfL40JmddwO+v2sur0QZIL\nFPRVf7ZSMgjiNE67srS07tlCyQKBgQDO6kEYM1IqsLhtiuzehBi80OIeSD6AdW/j\nD+TWjLGiiB948nQm90xjfflQPmKY9ywgWkhmeeXjPtDMK6K72wl47PBbHYWc3eC6\nUGjHOS+oDoECXXQ8+7WX52B89l4V9lX6QT9WQo5MFhtHCOGLkBOsKWbVEblflh5D\nMPOBqaDfYwKBgESNAXSYhAUeDDSxXqffXULrsYShv0xHeLa948fppLgnhCtJwtfj\nPNZjPlw9K477rkFgMtjFPGSHaYpyhQJLDveJQ4GezEbZ+ywEReLRzY2owZ+ZZ+Mw\nub/qF2AHZS9C2GHhGbJjiN1m90vXv8d+6OPtwyczqkdvYy/G7Cbog7mZAoGAZAVY\n8hnc3kYO4OUHG4k/bAaNR5YkoHQkYd6NACmCtM6YaB7LhwqEIpQCsId3ofnZmsoJ\ntX+3YOI8jHWLdMOtEId4qJLcw7d9qpK0E5nRL6vTMRF73v7OCWAPhFiToooxhYeE\n1m3V23HUPcJNROmgmNhqnRS0R0CJ4HEJROR6n4ECgYBWtJmafaKzD6d4TnOIse8V\nxV7P3KHEXK5iE9inSlxCUZ1MshEQvHbZ9hO/1yYHPL6L92PTH95Lh6VKi27dN7de\nFqvEm2HvkP9IsI+wQwdtXseH21fBaHTPWVR5hDPM3ntJ10GvnTYhQRmGFQfwibin\nDKIAWXQl9AlEk1sGv9T3Tw==\n-----END PRIVATE KEY-----\n",
      "client_email":
          "firebase-adminsdk-fbsvc@tele-5d291.iam.gserviceaccount.com",
      "client_id": "101952011272409084501",
    };

    List<String> scopes = [
      "https://www.googleapis.com/auth/firebase.messaging",
    ];

    try {
      auth.AuthClient client = await auth.clientViaServiceAccount(
        auth.ServiceAccountCredentials.fromJson(serviceAccountJson),
        scopes,
      );

      final accessToken = client.credentials.accessToken.data;
      client.close();
      return accessToken;
    } catch (e) {
      debugPrint('Error getting Access Token: $e');
      return null;
    }
  }

  Future<void> sendNotification({
    required String title,
    required String body,
    required String productId,
  }) async {
    final accessToken = await _getAccessToken();
    if (accessToken == null) {
      debugPrint('Failed to obtain access token');
      return;
    }

    final fcmToken = await FirebaseMessaging.instance.getToken();
    debugPrint('FCM token: $fcmToken');
    if (fcmToken == null) return;

    const String projectId = "tele-5d291";
    const String url =
        'https://fcm.googleapis.com/v1/projects/$projectId/messages:send';

    try {
      final response = await Dio().post(
        url,
        options: Options(
          validateStatus: (_) => true,
          contentType: Headers.jsonContentType,
          headers: {"Authorization": "Bearer $accessToken"},
        ),
        data: {
          "message": {
            "topic": _SubscribeKey,
            "notification": {
              "title": title,
              "body": body,
            },
            'data': {
              'productId': productId,
            },
          },
        },
      );

      debugPrint('Response status: ${response.statusCode}');
      debugPrint('Response data: ${response.data}');
    } catch (e) {
      debugPrint('Error sending notification: $e');
    }
  }
}
