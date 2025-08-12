// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_categories_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubCategoriesResponse _$SubCategoriesResponseFromJson(
  Map<String, dynamic> json,
) => SubCategoriesResponse(
  results: (json['results'] as num?)?.toInt(),
  pagination: json['metadata'] == null
      ? null
      : Pagination.fromJson(json['metadata'] as Map<String, dynamic>),
  subCategories: (json['data'] as List<dynamic>?)
      ?.map((e) => SubCategories.fromJson(e as Map<String, dynamic>))
      .toList(),
);
