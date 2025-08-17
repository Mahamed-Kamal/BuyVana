// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_to_cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductToCart _$ProductToCartFromJson(Map<String, dynamic> json) =>
    ProductToCart(
      count: (json['count'] as num?)?.toInt(),
      id: json['id'] as String?,
      product: json['product'] as String?,
      price: (json['price'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ProductToCartToJson(ProductToCart instance) =>
    <String, dynamic>{
      'count': instance.count,
      'id': instance.id,
      'product': instance.product,
      'price': instance.price,
    };
