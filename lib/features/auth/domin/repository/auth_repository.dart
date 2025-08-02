import 'package:buy_vana/core/failures/failures.dart';
import 'package:buy_vana/features/auth/data/models/auth_response_model.dart';
import 'package:buy_vana/features/auth/data/models/sign_up_request_model.dart';
import 'package:dartz/dartz.dart';

import '../../data/models/sign_in_request_model.dart';

abstract class AuthRepository {
  Future<Either<Failures,AuthResponseModel>> signUp (SignUpRequestModel signUpRequestModel);
  Future<Either<Failures,AuthResponseModel>> signIn (SignInRequestModel signInRequestModel);
}