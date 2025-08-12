// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoriesResponse _$CategoriesResponseFromJson(Map<String, dynamic> json) =>
    CategoriesResponse(
      results: (json['results'] as num?)?.toInt(),
      pagination: json['metadata'] == null
          ? null
          : Pagination.fromJson(json['metadata'] as Map<String, dynamic>),
      category: (json['data'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CategoriesResponseToJson(CategoriesResponse instance) =>
    <String, dynamic>{
      'results': instance.results,
      'metadata': instance.pagination,
      'data': instance.category,
    };
