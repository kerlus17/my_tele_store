// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_category_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateCategoryResponse _$CreateCategoryResponseFromJson(
  Map<String, dynamic> json,
) => CreateCategoryResponse(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  image: json['image'] as String?,
);

Map<String, dynamic> _$CreateCategoryResponseToJson(
  CreateCategoryResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'image': instance.image,
};
