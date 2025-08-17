import 'package:buy_vana/features/products/data/data_sources/remote/product/products_data_sources.dart';
import 'package:buy_vana/features/products/data/models/product/products.dart';
import 'package:buy_vana/features/products/domin/repository/products_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as:ProductsRepository)
class ProductsRepositoryImpl extends ProductsRepository {
  final ProductsDataSources productsDataSources;
  ProductsRepositoryImpl(this.productsDataSources);
  @override
  Future<List<Products>?> getProducts({String? subCategoryId}) async {
    var response = await productsDataSources.getProducts(subCategoryId:subCategoryId);
    return response;
  }
}