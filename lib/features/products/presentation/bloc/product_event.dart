part of 'product_bloc.dart';

abstract class ProductEvent {}
class GetProducts extends ProductEvent {
  GetProducts();
}
 class GetAddProductToCartEvent extends ProductEvent {
  final String productId;
  GetAddProductToCartEvent(this.productId);
}
