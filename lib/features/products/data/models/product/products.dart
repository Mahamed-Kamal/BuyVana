import 'package:buy_vana/features/main_layout/data/models/brands/brands.dart';
import 'package:buy_vana/features/main_layout/data/models/categories/category.dart';
import 'package:buy_vana/features/main_layout/data/models/sub_categories/sub_categories.dart';
import 'package:json_annotation/json_annotation.dart';
part 'products.g.dart';

@JsonSerializable()
class Products {
  final int? sold;
  final List<String>? images;
  final List<SubCategories>? subcategory;
  final int? ratingsQuantity;
  final String? title;
  final String? slug;
  final String? description;
  final int? quantity;
  final int? price;
  final String? imageCover;
  final Category? category;
  final Brands? brand;
  final double? ratingsAverage;
  final  String? createdAt;
  final String? updatedAt;
  final String? id;

  const Products({
    this.sold,
    this.images,
    this.subcategory,
    this.ratingsQuantity,
    this.title,
    this.slug,
    this.description,
    this.quantity,
    this.price,
    this.imageCover,
    this.category,
    this.brand,
    this.ratingsAverage,
    this.createdAt,
    this.updatedAt,
    this.id,
  });

  factory Products.fromJson(Map<String, dynamic> json) => _$ProductsFromJson(json);

}