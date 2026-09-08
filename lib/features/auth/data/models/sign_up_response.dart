import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_up_response.g.dart';

@JsonSerializable()
class SignUpResponse {
  SignUpResponse(this.data);

  final SignUpDataModel data;

  factory SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseFromJson(json);
}

@JsonSerializable()
class SignUpDataModel {
  SignUpDataModel(this.addUser);

  final AddUserModel addUser;

  factory SignUpDataModel.fromJson(Map<String, dynamic> json) =>
      _$SignUpDataModelFromJson(json);
}

@JsonSerializable()
class AddUserModel {
  AddUserModel(this.id, this.email);

  factory AddUserModel.fromJson(Map<String, dynamic> json) =>
      _$AddUserModelFromJson(json);

  final String? id;
  final String? email;
}
