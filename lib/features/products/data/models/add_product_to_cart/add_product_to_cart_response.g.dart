// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_product_to_cart_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddProductToCartResponse _$AddProductToCartResponseFromJson(
  Map<String, dynamic> json,
) => AddProductToCartResponse(
  status: json['status'] as String?,
  message: json['message'] as String?,
  numOfCartItems: (json['numOfCartItems'] as num?)?.toInt(),
  cartId: json['cartId'] as String?,
  data: json['data'] == null
      ? null
      : Data.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AddProductToCartResponseToJson(
  AddProductToCartResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'numOfCartItems': instance.numOfCartItems,
  'cartId': instance.cartId,
  'data': instance.data,
};

Data _$DataFromJson(Map<String, dynamic> json) => Data(
  id: json['_id'] as String?,
  cartOwner: json['cartOwner'] as String?,
  products: (json['products'] as List<dynamic>?)
      ?.map((e) => ProductToCart.fromJson(e as Map<String, dynamic>))
      .toList(),
  createdAt: json['createdAt'] as String?,
  updatedAt: json['updatedAt'] as String?,
  totalCartPrice: (json['totalCartPrice'] as num?)?.toInt(),
);

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
  '_id': instance.id,
  'cartOwner': instance.cartOwner,
  'products': instance.products,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
  'totalCartPrice': instance.totalCartPrice,
};
