part of 'cart_bloc.dart';

enum RequestStata {init,loading,loaded,error}
class CartState {
  final RequestStata? cartRequestStata;
  final GetCartsDataResponse? cartModel;
  final Failures? failures;
  const CartState({ this.cartRequestStata,  this.cartModel,  this.failures});

  CartState copyWith({RequestStata? cartRequestStata,GetCartsDataResponse? cartModel,Failures? failures}){
    return  CartState(
      cartRequestStata: cartRequestStata?? this.cartRequestStata,
      cartModel: cartModel?? this.cartModel,
      failures: failures ?? this.failures,
    );
  }



}

final class CartInitial extends CartState {
  CartInitial():super(cartRequestStata: RequestStata.init);

}
