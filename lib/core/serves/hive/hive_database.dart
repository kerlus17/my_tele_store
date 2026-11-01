import 'package:hive_ce_flutter/hive_ce_flutter.dart';
import 'package:tele_store/features/admin/add_notification/data/models/add_notification_model.dart';
import 'package:tele_store/features/customer/favourite/data/model/add_favourite_model.dart';

class HiveDatabase {
  factory HiveDatabase() => _instance;

  HiveDatabase._();

  static final HiveDatabase _instance = HiveDatabase._();

  Box<AddNotificationModel>? notificationBox;
  Box<AddFavouriteModel>? favouriteBox;

  Future<void> setup() async {
    await Hive.initFlutter();
    Hive.registerAdapter(AddNotificationModelAdapter());
    Hive.registerAdapter(AddFavouriteModelAdapter());
    notificationBox = await Hive.openBox<AddNotificationModel>(
      'notifications_box',
    );
    favouriteBox = await Hive.openBox<AddFavouriteModel>('favourites_box');
  }

  Future<void> clearAllBoxes() async {
    await notificationBox!.clear();
    await favouriteBox!.clear();
  }
}
