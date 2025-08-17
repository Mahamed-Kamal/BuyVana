import 'package:buy_vana/features/products/data/models/add_product_to_cart/add_product_to_cart_response.dart';

abstract class  AddProductToCartRepository{
  Future<AddProductToCartResponse> getAddProductToCart({required String productId});
}