import 'package:buy_vana/features/main_layout/data/models/brands/brands.dart';
import 'package:buy_vana/features/main_layout/data/models/categories/category.dart';
import 'package:buy_vana/features/main_layout/data/models/sub_categories/sub_categories.dart';

abstract class HomeRepository {
  Future<List<Category>?> getCategories();
  Future<List<Brands>?> getBrands();
  Future<List<SubCategories>?> getSubCategories(String categoriesId);
}