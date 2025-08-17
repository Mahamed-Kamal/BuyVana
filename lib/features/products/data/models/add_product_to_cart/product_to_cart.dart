import 'package:json_annotation/json_annotation.dart';
part 'product_to_cart.g.dart';

@JsonSerializable()
class ProductToCart {
  final int? count;
  final String? id;
  final String? product;
  final int? price;

  const ProductToCart({
    this.count,
    this.id,
    this.product,
    this.price,
  });

  factory ProductToCart.fromJson(Map<String,dynamic>  json) => _$ProductToCartFromJson(json);

}