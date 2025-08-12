
import 'package:buy_vana/features/main_layout/data/models/sub_categories/sub_categories.dart';
import 'package:buy_vana/features/main_layout/domin/repository/home_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class SubCategoriesUseCase {

  final HomeRepository _subCategories;
  SubCategoriesUseCase(this._subCategories);

   Future<List<SubCategories>?> call(String categoriesId){
    return _subCategories.getSubCategories(categoriesId);
  }
}