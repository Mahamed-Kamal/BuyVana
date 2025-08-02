import 'package:buy_vana/features/auth/data/models/auth_response_model.dart';
import 'package:buy_vana/features/auth/data/models/sign_up_request_model.dart';

import '../../models/sign_in_request_model.dart';


abstract class AuthDataSourceRemote {
  Future<AuthResponseModel> signUp (SignUpRequestModel signUpRequestModel);
  Future<AuthResponseModel> signIn (SignInRequestModel signInRequestModel);
}