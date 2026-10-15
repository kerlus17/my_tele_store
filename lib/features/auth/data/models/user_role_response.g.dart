// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_role_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserRoleResponse _$UserRoleResponseFromJson(Map<String, dynamic> json) =>
    UserRoleResponse(
      userName: json['name'] as String?,
      userEmail: json['email'] as String?,
      userImage: json['avatar'] as String?,
      userRole: json['role'] as String?,
      userId: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$UserRoleResponseToJson(UserRoleResponse instance) =>
    <String, dynamic>{
      'role': instance.userRole,
      'id': instance.userId,
      'name': instance.userName,
      'email': instance.userEmail,
      'avatar': instance.userImage,
    };
