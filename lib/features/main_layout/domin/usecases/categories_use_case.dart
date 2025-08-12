import 'package:buy_vana/features/main_layout/data/models/categories/category.dart';
import 'package:buy_vana/features/main_layout/domin/repository/home_repository.dart';
import 'package:injectable/injectable.dart';
@injectable
class CategoriesUseCase {
  final HomeRepository _categoriesRepository;
  const CategoriesUseCase(this._categoriesRepository);

  Future<List<Category>?> call(){
    return _categoriesRepository.getCategories();
  }
}