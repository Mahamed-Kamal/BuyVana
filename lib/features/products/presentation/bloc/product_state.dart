part of 'product_bloc.dart';
 enum RequestState {init,loading,loaded,error}

 class ProductState {
   final RequestState? productsRequestState;
   final RequestState? addProductToCartRequestState;
   final AddProductToCartResponse? addProductToCartModel;
   final List<Products>? products;
   final Failures? failures;
   ProductState( {this.productsRequestState, this.products, this.failures,this.addProductToCartRequestState, this.addProductToCartModel});

   ProductState copyWith({
     RequestState? productsRequestState,
     List<Products>? products,
     Failures? failures,
     RequestState? addProductToCartRequestState,
     AddProductToCartResponse? addProductToCartModel
   }) {

     return ProductState(
       productsRequestState:productsRequestState ?? this.productsRequestState,
       addProductToCartModel: addProductToCartModel ?? this.addProductToCartModel,
       addProductToCartRequestState:addProductToCartRequestState ?? this.addProductToCartRequestState,
       products: products ?? this.products,
       failures: failures ?? this.failures,
     );
   }

 }

final class ProductInitial extends ProductState {
  ProductInitial():super(productsRequestState: RequestState.init,addProductToCartRequestState:RequestState.init);
}
