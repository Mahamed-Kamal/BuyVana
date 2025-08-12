
import 'package:json_annotation/json_annotation.dart';

part 'category.g.dart';

@JsonSerializable()
class Category {
  @JsonKey(name: "_id")
  final String? id;
  final String? name;
  final String? slug;
  final String? image;
  final String? createdAt;
  final String? updatedAt;

  const Category({
    this.id,
    this.name,
    this.slug,
    this.image,
    this.createdAt,
    this.updatedAt,});

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);


}