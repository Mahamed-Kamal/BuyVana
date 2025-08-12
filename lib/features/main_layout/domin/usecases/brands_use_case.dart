
import 'package:buy_vana/features/main_layout/data/models/brands/brands.dart';
import 'package:buy_vana/features/main_layout/domin/repository/home_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class BrandsUseCase {
  final HomeRepository _homeRepository;
  const BrandsUseCase(this._homeRepository);

  Future <List<Brands>?> call(){
    return _homeRepository.getBrands();
  }


}