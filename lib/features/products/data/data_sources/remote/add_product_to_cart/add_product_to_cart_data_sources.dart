import 'package:buy_vana/features/products/data/models/add_product_to_cart/add_product_to_cart_response.dart';

abstract class AddProductToCartDataSources {
  Future<AddProductToCartResponse> getProductToCart({required String productId});

}