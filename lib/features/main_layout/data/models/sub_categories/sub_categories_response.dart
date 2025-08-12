import 'package:buy_vana/features/main_layout/data/models/pagination.dart';
import 'package:buy_vana/features/main_layout/data/models/sub_categories/sub_categories.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sub_categories_response.g.dart';

@JsonSerializable()
class SubCategoriesResponse {

  final int? results;
  @JsonKey(name: "metadata")
  final Pagination? pagination;
  @JsonKey(name: "data")
  final List<SubCategories>? subCategories;

 const SubCategoriesResponse({
      this.results, 
      this.pagination,
      this.subCategories,
 });

  factory SubCategoriesResponse.fromJson(Map<String,dynamic> json) => _$SubCategoriesResponseFromJson(json);


}
