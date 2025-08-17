import 'package:bloc/bloc.dart';
import 'package:buy_vana/core/failures/failures.dart';
import 'package:buy_vana/features/cart/data/models/get_carts_data_response.dart';
import 'package:buy_vana/features/cart/domin/usecases/cart_use_case.dart';
import 'package:injectable/injectable.dart';
part 'cart_event.dart';
part 'cart_state.dart';

@injectable
class CartBloc extends Bloc<CartEvent, CartState> {
  final CartUseCase cartUseCase;
  CartBloc(this.cartUseCase) : super(CartInitial()) {
    on<GetCartEvent>((event, emit) async  {
      emit(state.copyWith(cartRequestStata: RequestStata.loading));
       var response = await cartUseCase.call();
       emit(state.copyWith(cartRequestStata: RequestStata.loaded,cartModel:response));
    });
  }
}
