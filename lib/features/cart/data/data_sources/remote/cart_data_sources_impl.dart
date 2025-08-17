import 'package:buy_vana/core/api/api_services.dart';
import 'package:buy_vana/core/resources/shared_pref/shared_pref_keys.dart';
import 'package:buy_vana/core/resources/shared_pref/shared_preferences.dart';
import 'package:buy_vana/features/cart/data/data_sources/remote/cart_data_sources.dart';
import 'package:buy_vana/features/cart/data/models/get_carts_data_response.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CartDataSources)
class CartDataSourcesImpl extends CartDataSources{
  final ApiServices _apiServices;
   CartDataSourcesImpl(this._apiServices);
  @override
  Future<GetCartsDataResponse> getCartsData() async {
    String token = await SharedPref.getString(SharedPrefKeys.token);
    var response = await _apiServices.getCarts(token: token);
    return response;
  }

}