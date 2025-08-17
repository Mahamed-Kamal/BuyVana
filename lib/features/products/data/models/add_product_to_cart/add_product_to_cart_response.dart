import 'package:buy_vana/features/products/data/models/add_product_to_cart/product_to_cart.dart';
import 'package:json_annotation/json_annotation.dart';
part 'add_product_to_cart_response.g.dart';

@JsonSerializable()
class AddProductToCartResponse {
  final String? status;
  final String? message;
  final int? numOfCartItems;
  final String? cartId;
  final Data? data;

  const AddProductToCartResponse({
      this.status, 
      this.message, 
      this.numOfCartItems, 
      this.cartId, 
      this.data,
  });

  factory AddProductToCartResponse.fromJson(Map<String, dynamic> json) => _$AddProductToCartResponseFromJson(json);

}
@JsonSerializable()
class Data {
  @JsonKey(name:"_id")
  final String? id;
  final String? cartOwner;
  final List<ProductToCart>? products;
  final String? createdAt;
  final String? updatedAt;
  final  int? totalCartPrice;

  const Data({
      this.id, 
      this.cartOwner, 
      this.products, 
      this.createdAt, 
      this.updatedAt, 
      this.totalCartPrice,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

}
