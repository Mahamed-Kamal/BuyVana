import 'package:buy_vana/core/api/api_services.dart';
import 'package:buy_vana/features/main_layout/data/models/brands/brands.dart';
import 'package:buy_vana/features/main_layout/data/models/categories/category.dart';
import 'package:buy_vana/features/main_layout/data/models/sub_categories/sub_categories.dart';
import 'package:injectable/injectable.dart';
import 'home_data_source_remote.dart';

@Injectable(as: HomeDataSourceRemote)
class HomeDataSourceRemoteImpl extends HomeDataSourceRemote {
  final ApiServices _apiServices;

  HomeDataSourceRemoteImpl(this._apiServices);

  @override
  Future<List<Category>?> getCategories() async {
    var response = await _apiServices.getCategories();
    return response.category;
  }

  @override
  Future<List<Brands>?> getBrands() async{
    var response = await _apiServices.getBrands();
    return response.brands;
  }

  @override
  Future<List<SubCategories>?> getSubCategories(String categoryId) async {
    var response = await _apiServices.getSubCategories(categoryId);
    return response.subCategories;
  }



}
