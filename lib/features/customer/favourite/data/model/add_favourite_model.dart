import 'package:hive_ce/hive.dart';

part 'add_favourite_model.g.dart';

@HiveType(typeId: 1)
class AddFavouriteModel extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(1)
  String image;
  @HiveField(2)
  String id;
  @HiveField(3)
  String price;
  @HiveField(4)
  String categoryName;

  AddFavouriteModel({
    required this.title,
    required this.image,
    required this.id,
    required this.price,
    required this.categoryName,
  });
}
