import 'package:buy_vana/features/products/data/data_sources/remote/add_product_to_cart/add_product_to_cart_data_sources.dart';
import 'package:buy_vana/features/products/data/models/add_product_to_cart/add_product_to_cart_response.dart';
import 'package:buy_vana/features/products/domin/repository/add_product_to_cart_repository.dart';
import 'package:injectable/injectable.dart';


@Injectable(as: AddProductToCartRepository)
class AddProductToCartRepositoryImpl extends AddProductToCartRepository {
  final AddProductToCartDataSources addProductToCartDataSources;
  AddProductToCartRepositoryImpl(this.addProductToCartDataSources);

  @override
  Future<AddProductToCartResponse> getAddProductToCart({required String productId}) async {
    var response = await addProductToCartDataSources.getProductToCart(productId: productId);
    return response;
  }

}
