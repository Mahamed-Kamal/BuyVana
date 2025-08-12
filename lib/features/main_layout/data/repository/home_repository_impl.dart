import 'package:buy_vana/features/main_layout/data/data_sources/remote/home_data_source_remote.dart';
import 'package:buy_vana/features/main_layout/data/models/brands/brands.dart';
import 'package:buy_vana/features/main_layout/data/models/categories/category.dart';
import 'package:buy_vana/features/main_layout/data/models/sub_categories/sub_categories.dart';
import 'package:buy_vana/features/main_layout/domin/repository/home_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: HomeRepository)
class HomeRepositoryImpl extends HomeRepository {
   final HomeDataSourceRemote _homeDataSourceRemote;
    HomeRepositoryImpl(this._homeDataSourceRemote);

  @override
  Future<List<Category>?> getCategories() async {
      var response = await _homeDataSourceRemote.getCategories();
      return response;
  }

  @override
  Future<List<Brands>?> getBrands() async {
    var response = await _homeDataSourceRemote.getBrands();
    return response;
  }

  @override
  Future<List<SubCategories>?> getSubCategories(String categoriesId) async {
    var response = await _homeDataSourceRemote.getSubCategories(categoriesId);
    return response;
  }

}