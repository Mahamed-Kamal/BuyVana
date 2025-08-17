
import 'package:buy_vana/features/cart/data/models/get_carts_data_response.dart';
import 'package:buy_vana/features/cart/domin/repository/cart_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class CartUseCase {
  final CartRepository cartRepository;
  CartUseCase(this.cartRepository);
  Future<GetCartsDataResponse>call(){
    return cartRepository.getCartsData();
  }
}