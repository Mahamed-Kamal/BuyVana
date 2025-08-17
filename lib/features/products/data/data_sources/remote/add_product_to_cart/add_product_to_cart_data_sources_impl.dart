import 'package:buy_vana/core/api/api_services.dart';
import 'package:buy_vana/core/resources/shared_pref/shared_pref_keys.dart';
import 'package:buy_vana/core/resources/shared_pref/shared_preferences.dart';
import 'package:buy_vana/features/products/data/data_sources/remote/add_product_to_cart/add_product_to_cart_data_sources.dart';
import 'package:buy_vana/features/products/data/models/add_product_to_cart/add_product_to_cart_response.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AddProductToCartDataSources )
class AddProductToCartDataSourcesImpl extends AddProductToCartDataSources{
  final ApiServices _apiServices;
  AddProductToCartDataSourcesImpl(this._apiServices);

  @override
  Future<AddProductToCartResponse> getProductToCart({required String productId}) async {
    String token = await SharedPref.getString(SharedPrefKeys.token);

    var response = await _apiServices.getAddProductToCart(
        token: token,
        body: {"productId":productId},
    );
    return response;
  }
}