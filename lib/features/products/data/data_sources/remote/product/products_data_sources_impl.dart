import 'package:buy_vana/core/api/api_services.dart';
import 'package:buy_vana/features/products/data/data_sources/remote/product/products_data_sources.dart';
import 'package:buy_vana/features/products/data/models/product/products.dart';
import 'package:injectable/injectable.dart';

@Injectable(as:ProductsDataSources)
class ProductsDataSourcesImpl extends ProductsDataSources {
  final ApiServices apiServices;
   ProductsDataSourcesImpl(this.apiServices);

  @override
  Future<List<Products>?> getProducts({String? subCategoryId}) async {
    var response = await apiServices.getProducts(subCategoryId);
    return response.products;
  }

}