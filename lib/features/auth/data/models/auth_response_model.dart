import 'package:json_annotation/json_annotation.dart';

part 'auth_response_model.g.dart';

@JsonSerializable()
class AuthResponseModel {
  final String? message;
  final User? user;
  final String? token;

  AuthResponseModel({this.message, this.user, this.token});

  factory AuthResponseModel.fromJson(Map<String, dynamic> json) => _$AuthResponseModelFromJson(json);
}

@JsonSerializable()
class User {
  final String? name;
  final String? email;
  final String? role;

  const User({this.name, this.email, this.role});

  factory User.fromJson(dynamic json) => _$UserFromJson(json);
}
