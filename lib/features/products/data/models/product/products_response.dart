import 'package:buy_vana/features/main_layout/data/models/pagination.dart';
import 'package:buy_vana/features/products/data/models/product/products.dart';
import 'package:json_annotation/json_annotation.dart';
part 'products_response.g.dart';

@JsonSerializable()
class ProductsResponse {

  final int? results;
  @JsonKey(name: "metadata")
  final Pagination? pagination;
  @JsonKey(name: "data")
  final List<Products>? products;

 const ProductsResponse({
      this.results, 
      this.pagination,
      this.products,
 });

  factory ProductsResponse.fromJson(Map<String, dynamic> json) => _$ProductsResponseFromJson(json);

}
