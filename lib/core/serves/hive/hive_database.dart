import 'package:hive_ce_flutter/hive_ce_flutter.dart';
import 'package:tele_store/features/admin/add_notification/data/models/add_notification_model.dart';

class HiveDatabase {
  factory HiveDatabase() => _instance;

  HiveDatabase._();

  static final HiveDatabase _instance = HiveDatabase._();

  Box<AddNotificationModel> ? notificationBox;

  Future<void> setup() async {
    await Hive.initFlutter();
    Hive.registerAdapter(AddNotificationModelAdapter());
    notificationBox = await Hive.openBox<AddNotificationModel>('notifications_box');
  }

  Future<void>clearAllBoxes() async {
    await notificationBox!.clear();
  }


}
