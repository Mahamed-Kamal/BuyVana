import 'package:json_annotation/json_annotation.dart';
part 'sub_categories.g.dart';

@JsonSerializable()
class SubCategories {
  final String? id;
  final String? name;
  final String? slug;
  final String? category;

  const SubCategories({
    this.id,
    this.name,
    this.slug,
    this.category,
  });

  factory SubCategories.fromJson( Map<String, dynamic> json) => _$SubCategoriesFromJson(json);

}
