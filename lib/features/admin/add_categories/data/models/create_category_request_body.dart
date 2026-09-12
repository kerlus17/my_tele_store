import 'package:freezed_annotation/freezed_annotation.dart';
part 'create_category_request_body.g.dart';

@JsonSerializable()
class CreateCategoryRequestBody {
  CreateCategoryRequestBody({required this.image, required this.name});

  final String name;
  final String image;

  Map<String, dynamic> toJson() => _$CreateCategoryRequestBodyToJson(this);
}
