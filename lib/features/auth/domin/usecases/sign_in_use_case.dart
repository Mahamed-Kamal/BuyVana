import 'package:buy_vana/core/failures/failures.dart';
import 'package:buy_vana/features/auth/data/models/auth_response_model.dart';
import 'package:buy_vana/features/auth/domin/repository/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/sign_in_request_model.dart';

@injectable
class SignInUseCase {
  final AuthRepository authRepository;
  const SignInUseCase(this.authRepository);

  Future<Either<Failures,AuthResponseModel>> call ({required SignInRequestModel signInRequestModel}){
    return authRepository.signIn(signInRequestModel);
  }

}