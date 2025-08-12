import 'package:buy_vana/features/auth/data/models/auth_response_model.dart';
import 'package:buy_vana/features/auth/data/models/sign_up_request_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/failures/failures.dart';
import '../repository/auth_repository.dart';

@injectable
class SignUpUseCase {
  // // Object Repository
  final AuthRepository authRepository;

  const SignUpUseCase(this.authRepository);

   Future<Either<Failures,AuthResponseModel>> call ({required SignUpRequestModel request}){
     return authRepository.signUp(request);
   }

}