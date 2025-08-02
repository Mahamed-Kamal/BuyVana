import 'package:json_annotation/json_annotation.dart';

part 'sign_up_request_model.g.dart';


@JsonSerializable()
class SignUpRequestModel {

  final String? name;
  final String? email;
  final String? password;
  final String? rePassword;
  final String? phone;

  const SignUpRequestModel({
      this.name, 
      this.email, 
      this.password, 
      this.rePassword, 
      this.phone,
  });

  Map<String, dynamic> toJson() => _$SignUpRequestModelToJson(this);

}