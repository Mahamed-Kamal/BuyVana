// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthResponseModel _$AuthResponseModelFromJson(Map<String, dynamic> json) =>
    AuthResponseModel(
      message: json['message'] as String?,
      user: json['user'] == null ? null : User.fromJson(json['user']),
      token: json['token'] as String?,
    );


User _$UserFromJson(Map<String, dynamic> json) => User(
  name: json['name'] as String?,
  email: json['email'] as String?,
  role: json['role'] as String?,
);

