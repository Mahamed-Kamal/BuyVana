import 'package:json_annotation/json_annotation.dart';

part 'brands.g.dart';

@JsonSerializable()
class Brands {

  final String? id;
  final String? name;
  final String? slug;
  final String? image;
  final String? createdAt;
  final String? updatedAt;

 const  Brands({
    this.id,
    this.name,
    this.slug,
    this.image,
    this.createdAt,
    this.updatedAt,});

  factory Brands.fromJson(Map<String, dynamic> json) => _$BrandsFromJson(json);


}