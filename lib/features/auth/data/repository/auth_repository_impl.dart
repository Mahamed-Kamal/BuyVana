import 'package:buy_vana/core/failures/failures.dart';
import 'package:buy_vana/core/failures/remote_failures.dart';
import 'package:buy_vana/core/resources/shared_pref/shared_pref_keys.dart';
import 'package:buy_vana/core/resources/shared_pref/shared_preferences.dart';
import 'package:buy_vana/features/auth/data/data_sources/remote/auth_data_source_remote.dart';
import 'package:buy_vana/features/auth/data/models/auth_response_model.dart';
import 'package:buy_vana/features/auth/data/models/sign_in_request_model.dart';
import 'package:buy_vana/features/auth/data/models/sign_up_request_model.dart';
import 'package:dartz/dartz.dart';
import '../../domin/repository/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  // Object WebServices
  AuthDataSourceRemote authDataSourceRemote;
  AuthRepositoryImpl(this.authDataSourceRemote);

  @override
  Future<Either<Failures,AuthResponseModel>> signUp(SignUpRequestModel request) async {
    try{
        var response = await authDataSourceRemote.signUp(request);
        await SharedPref.setData(SharedPrefKeys.token,response.token);
        return Right(response);
    }
    catch(e){
      return Left(RemoteFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, AuthResponseModel>> signIn(SignInRequestModel signInRequestModel) async {
   try{
     var response = await authDataSourceRemote.signIn(signInRequestModel);
     await SharedPref.setData(SharedPrefKeys.token,response.token);
     return Right(response);
   }
   catch(e){
     return Left(RemoteFailures(e.toString()));
   }
  }

}