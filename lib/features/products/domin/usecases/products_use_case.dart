import 'package:buy_vana/features/products/data/models/product/products.dart';
import 'package:buy_vana/features/products/domin/repository/products_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class ProductsUseCase {
  final ProductsRepository productsRepository;
  ProductsUseCase(this.productsRepository);
  Future<List<Products>?> call ({String? subCategoryId}){
    return productsRepository.getProducts(subCategoryId: subCategoryId);
  }
}