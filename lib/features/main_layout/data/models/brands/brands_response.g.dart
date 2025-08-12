// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brands_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BrandsResponse _$BrandsResponseFromJson(Map<String, dynamic> json) =>
    BrandsResponse(
      results: (json['results'] as num?)?.toInt(),
      pagination: json['metadata'] == null
          ? null
          : Pagination.fromJson(json['metadata'] as Map<String, dynamic>),
      brands: (json['data'] as List<dynamic>?)
          ?.map((e) => Brands.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BrandsResponseToJson(BrandsResponse instance) =>
    <String, dynamic>{
      'results': instance.results,
      'metadata': instance.pagination,
      'data': instance.brands,
    };
