import 'package:buy_vana/features/products/data/models/product/products.dart';

abstract class ProductsDataSources {
  Future<List<Products>?> getProducts({String? subCategoryId});

}