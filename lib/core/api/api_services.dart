import 'package:buy_vana/core/api/api_constants.dart';
import 'package:buy_vana/core/api/end_points.dart';
import 'package:buy_vana/features/cart/data/models/get_carts_data_response.dart';
import 'package:buy_vana/features/products/data/models/add_product_to_cart/add_product_to_cart_response.dart';
import 'package:buy_vana/features/main_layout/data/models/brands/brands_response.dart';
import 'package:buy_vana/features/main_layout/data/models/sub_categories/sub_categories_response.dart';
import 'package:buy_vana/features/products/data/models/product/products_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import '../../features/auth/data/models/auth_response_model.dart';
import '../../features/auth/data/models/sign_in_request_model.dart';
import '../../features/auth/data/models/sign_up_request_model.dart';
import '../../features/main_layout/data/models/categories/categories_response.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
@lazySingleton
abstract class ApiServices {
  @factoryMethod
  factory ApiServices(Dio dio) = _ApiServices;

  @POST(EndPoints.signUp)
  Future<AuthResponseModel> signUp(@Body() SignUpRequestModel model);

  @POST(EndPoints.signIn)
  Future<AuthResponseModel> signIn(
    @Body() SignInRequestModel signInRequestModel,
  );

  @GET(EndPoints.categories)
  Future<CategoriesResponse> getCategories();

  @GET(EndPoints.brands)
  Future<BrandsResponse> getBrands();

  @GET(EndPoints.subCategory)
  Future<SubCategoriesResponse> getSubCategories(@Path("id") String id);

  @GET(EndPoints.products)
  Future<ProductsResponse> getProducts(
    @Query("category[in]") String? categoryId,
  );

  @POST(EndPoints.cart)
  Future<AddProductToCartResponse> getAddProductToCart({
    @Body() required Map<String, dynamic> body,
    @Header('token') required String token,
  });
  @GET(EndPoints.cart)
  Future<GetCartsDataResponse> getCarts({@Header('token') required String token});
}
