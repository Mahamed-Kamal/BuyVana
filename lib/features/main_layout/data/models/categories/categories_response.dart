
import 'package:buy_vana/features/main_layout/data/models/categories/category.dart';
import 'package:buy_vana/features/main_layout/data/models/pagination.dart';
import 'package:json_annotation/json_annotation.dart';

part 'categories_response.g.dart';

@JsonSerializable()
class CategoriesResponse {

  final int? results;
  @JsonKey(name: "metadata")
  final Pagination? pagination;
  @JsonKey(name: "data")
  final List<Category>? category;

  const CategoriesResponse({
      this.results, 
      this.pagination,
      this.category
  });

  factory CategoriesResponse.fromJson(Map<String, dynamic> json) => _$CategoriesResponseFromJson(json);

}


