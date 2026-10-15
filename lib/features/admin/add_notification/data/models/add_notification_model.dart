import 'package:hive_ce/hive.dart';

part 'add_notification_model.g.dart';

@HiveType(typeId: 0)
class AddNotificationModel extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(1)
  String body;
  @HiveField(2)
  int idProduct;
  @HiveField(3)
  DateTime createdAt;
 

  AddNotificationModel({
    required this.title,
    required this.body,
    required this.idProduct,
    required this.createdAt,
  });
}

