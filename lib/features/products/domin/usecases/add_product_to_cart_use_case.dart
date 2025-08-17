import 'package:buy_vana/features/products/data/models/add_product_to_cart/add_product_to_cart_response.dart';
import 'package:buy_vana/features/products/domin/repository/add_product_to_cart_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class AddProductToCartUseCase {
  final AddProductToCartRepository _addProductToCartRepository;
  AddProductToCartUseCase(this._addProductToCartRepository);

  Future<AddProductToCartResponse> call({required String productId}){
    return _addProductToCartRepository.getAddProductToCart(productId: productId);
  }
}