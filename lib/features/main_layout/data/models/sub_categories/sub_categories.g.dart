// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_categories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubCategories _$SubCategoriesFromJson(Map<String, dynamic> json) =>
    SubCategories(
      id: json['id'] as String?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      category: json['category'] as String?,
    );

Map<String, dynamic> _$SubCategoriesToJson(SubCategories instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'category': instance.category,
    };
