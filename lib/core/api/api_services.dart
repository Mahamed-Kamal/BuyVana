import 'package:buy_vana/core/api/api_constants.dart';
import 'package:buy_vana/core/api/end_points.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../features/auth/data/models/auth_response_model.dart';
import '../../features/auth/data/models/sign_in_request_model.dart';
import '../../features/auth/data/models/sign_up_request_model.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiServices {
  factory ApiServices(Dio dio, {String? baseUrl}) = _ApiServices;

  @POST(EndPoints.signUp)
  Future<AuthResponseModel> signUp(@Body() SignUpRequestModel model);
  @POST(EndPoints.signIn)
  Future<AuthResponseModel> signIn(@Body() SignInRequestModel signInRequestModel);
}
