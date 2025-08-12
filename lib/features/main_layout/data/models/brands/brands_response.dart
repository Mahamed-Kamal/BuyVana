import 'package:buy_vana/features/main_layout/data/models/pagination.dart';
import 'package:json_annotation/json_annotation.dart';
import 'brands.dart';

part 'brands_response.g.dart';

@JsonSerializable()
class BrandsResponse {

  final int? results;
  @JsonKey(name:"metadata")
  final Pagination? pagination;
  @JsonKey(name:"data")
  final List<Brands>? brands;

  const BrandsResponse({
      this.results, 
      this.pagination,
      this.brands
  });

  factory BrandsResponse.fromJson(Map<String, dynamic> json) => _$BrandsResponseFromJson(json);


}