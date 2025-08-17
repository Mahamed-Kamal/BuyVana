import 'package:buy_vana/features/cart/data/models/get_carts_data_response.dart';

abstract class CartDataSources {
  Future<GetCartsDataResponse> getCartsData ();
}