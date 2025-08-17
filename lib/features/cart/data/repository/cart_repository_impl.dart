import 'package:buy_vana/features/cart/data/data_sources/remote/cart_data_sources.dart';
import 'package:buy_vana/features/cart/data/models/get_carts_data_response.dart';
import 'package:buy_vana/features/cart/domin/repository/cart_repository.dart';
import 'package:injectable/injectable.dart';
@Injectable(as:CartRepository )
class CartRepositoryImpl extends CartRepository {
  final CartDataSources cartDataSources;
  CartRepositoryImpl(this.cartDataSources);

  @override
  Future<GetCartsDataResponse> getCartsData()async {
    var response =  await cartDataSources.getCartsData();
    return response;
  }

}