import 'package:json_annotation/json_annotation.dart';

part 'pagination.g.dart';

@JsonSerializable()
class Pagination {
  final int? currentPage;
  final int? numberOfPages;
  final int? limit;

  const Pagination({this.currentPage, this.numberOfPages, this.limit});
  factory Pagination.fromJson(Map<String, dynamic> json) => _$PaginationFromJson(json);
}
