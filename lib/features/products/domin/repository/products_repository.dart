import 'package:buy_vana/features/products/data/models/product/products.dart';

abstract class ProductsRepository {
  Future<List<Products>?> getProducts({String? subCategoryId});
}