part of 'auth_bloc.dart';

abstract class AuthEvent {}

class SignUpEvent extends AuthEvent{
   SignUpRequestModel model;
   SignUpEvent({required this.model});
}

class SignInEvent extends AuthEvent{
  SignInRequestModel signInRequestModel;
  SignInEvent(this.signInRequestModel);
}
