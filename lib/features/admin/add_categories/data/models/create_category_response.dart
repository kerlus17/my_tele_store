import 'package:json_annotation/json_annotation.dart';

part 'create_category_response.g.dart';

@JsonSerializable()
class CreateCategoryResponse {
  final int? id; 
  final String? name;
  final String? image;

  CreateCategoryResponse({
    this.id,
    this.name,
    this.image,
  });

  factory CreateCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateCategoryResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CreateCategoryResponseToJson(this);
}
