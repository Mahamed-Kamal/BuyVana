import 'package:buy_vana/core/api/api_services.dart';
import 'package:buy_vana/features/auth/data/data_sources/remote/auth_data_source_remote.dart';
import 'package:buy_vana/features/auth/data/models/auth_response_model.dart';
import 'package:buy_vana/features/auth/data/models/sign_in_request_model.dart';
import 'package:buy_vana/features/auth/data/models/sign_up_request_model.dart';
import 'package:injectable/injectable.dart';

@Injectable(as:AuthDataSourceRemote)
class AuthDataSourceRemoteImpl implements AuthDataSourceRemote {

  final ApiServices _apiServices;
  const AuthDataSourceRemoteImpl(this._apiServices);

  @override
  Future<AuthResponseModel> signUp(SignUpRequestModel signUpRequestModel) async {
    var response = await _apiServices.signUp(signUpRequestModel);
    return response;

  }

  @override
  Future<AuthResponseModel> signIn(SignInRequestModel signInRequestModel) async {
    var response = await _apiServices.signIn(signInRequestModel);
    return response;
  }

}