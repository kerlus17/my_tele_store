import 'package:freezed_annotation/freezed_annotation.dart';



part 'categories_number_response.g.dart';

@JsonSerializable()
class CategoriesNumberResponse {
  CategoriesNumberResponse(this.data);

  factory CategoriesNumberResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoriesNumberResponseFromJson(json);

  final CategoriesNumberData data;

  String get categoriesNumbers {
    if (data.CategoriesList.isEmpty) {
      return '0';
    }
    return data.CategoriesList.length.toString();
  }
}

@JsonSerializable()
class CategoriesNumberData {
  CategoriesNumberData(this.CategoriesList);

  factory CategoriesNumberData.fromJson(Map<String, dynamic> json) =>
      _$CategoriesNumberDataFromJson(json);

  @JsonKey(name: 'categories')
  final List<CategoriesNumberModel> CategoriesList;
}

@JsonSerializable()
class CategoriesNumberModel {
  CategoriesNumberModel(this.name);

  factory CategoriesNumberModel.fromJson(Map<String, dynamic> json) =>
      _$CategoriesNumberModelFromJson(json);

  final String? name;
}
