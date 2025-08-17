// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/auth/data/data_sources/remote/auth_data_source_remote.dart'
    as _i1020;
import '../../features/auth/data/data_sources/remote/auth_data_source_remote_impl.dart'
    as _i195;
import '../../features/auth/data/repository/auth_repository_impl.dart' as _i409;
import '../../features/auth/domin/repository/auth_repository.dart' as _i925;
import '../../features/auth/domin/usecases/sign_in_use_case.dart' as _i204;
import '../../features/auth/domin/usecases/sign_up_use_case.dart' as _i635;
import '../../features/auth/presentation/bloc/auth_bloc.dart' as _i797;
import '../../features/cart/data/data_sources/remote/cart_data_sources.dart'
    as _i562;
import '../../features/cart/data/data_sources/remote/cart_data_sources_impl.dart'
    as _i491;
import '../../features/cart/data/repository/cart_repository_impl.dart'
    as _i1063;
import '../../features/cart/domin/repository/cart_repository.dart' as _i742;
import '../../features/cart/domin/usecases/cart_use_case.dart' as _i377;
import '../../features/cart/presentation/bloc/cart_bloc.dart' as _i517;
import '../../features/main_layout/data/data_sources/remote/home_data_source_remote.dart'
    as _i148;
import '../../features/main_layout/data/data_sources/remote/home_data_source_remote_impl.dart'
    as _i807;
import '../../features/main_layout/data/repository/home_repository_impl.dart'
    as _i763;
import '../../features/main_layout/domin/repository/home_repository.dart'
    as _i1039;
import '../../features/main_layout/domin/usecases/brands_use_case.dart'
    as _i621;
import '../../features/main_layout/domin/usecases/categories_use_case.dart'
    as _i1028;
import '../../features/main_layout/domin/usecases/sub_categories_use_case.dart'
    as _i854;
import '../../features/main_layout/presentation/screens/categories_tap/presentation/bloc/categories_bloc.dart'
    as _i334;
import '../../features/main_layout/presentation/screens/home_tap/bloc/home_bloc.dart'
    as _i466;
import '../../features/products/data/data_sources/remote/add_product_to_cart/add_product_to_cart_data_sources.dart'
    as _i289;
import '../../features/products/data/data_sources/remote/add_product_to_cart/add_product_to_cart_data_sources_impl.dart'
    as _i439;
import '../../features/products/data/data_sources/remote/product/products_data_sources.dart'
    as _i234;
import '../../features/products/data/data_sources/remote/product/products_data_sources_impl.dart'
    as _i175;
import '../../features/products/data/repository/add_product_to_cart_repository_impl.dart'
    as _i115;
import '../../features/products/data/repository/products_repository_impl.dart'
    as _i701;
import '../../features/products/domin/repository/add_product_to_cart_repository.dart'
    as _i270;
import '../../features/products/domin/repository/products_repository.dart'
    as _i1043;
import '../../features/products/domin/usecases/add_product_to_cart_use_case.dart'
    as _i335;
import '../../features/products/domin/usecases/products_use_case.dart' as _i998;
import '../../features/products/presentation/bloc/product_bloc.dart' as _i28;
import '../api/api_services.dart' as _i124;
import '../api/dio_factory.dart' as _i1008;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final networkModule = _$NetworkModule();
    gh.lazySingleton<_i361.Dio>(() => networkModule.provideDio());
    gh.lazySingleton<_i124.ApiServices>(
      () => _i124.ApiServices(gh<_i361.Dio>()),
    );
    gh.factory<_i1020.AuthDataSourceRemote>(
      () => _i195.AuthDataSourceRemoteImpl(gh<_i124.ApiServices>()),
    );
    gh.factory<_i234.ProductsDataSources>(
      () => _i175.ProductsDataSourcesImpl(gh<_i124.ApiServices>()),
    );
    gh.factory<_i148.HomeDataSourceRemote>(
      () => _i807.HomeDataSourceRemoteImpl(gh<_i124.ApiServices>()),
    );
    gh.factory<_i925.AuthRepository>(
      () => _i409.AuthRepositoryImpl(gh<_i1020.AuthDataSourceRemote>()),
    );
    gh.factory<_i1039.HomeRepository>(
      () => _i763.HomeRepositoryImpl(gh<_i148.HomeDataSourceRemote>()),
    );
    gh.factory<_i562.CartDataSources>(
      () => _i491.CartDataSourcesImpl(gh<_i124.ApiServices>()),
    );
    gh.factory<_i289.AddProductToCartDataSources>(
      () => _i439.AddProductToCartDataSourcesImpl(gh<_i124.ApiServices>()),
    );
    gh.factory<_i854.SubCategoriesUseCase>(
      () => _i854.SubCategoriesUseCase(gh<_i1039.HomeRepository>()),
    );
    gh.factory<_i742.CartRepository>(
      () => _i1063.CartRepositoryImpl(gh<_i562.CartDataSources>()),
    );
    gh.factory<_i204.SignInUseCase>(
      () => _i204.SignInUseCase(gh<_i925.AuthRepository>()),
    );
    gh.factory<_i635.SignUpUseCase>(
      () => _i635.SignUpUseCase(gh<_i925.AuthRepository>()),
    );
    gh.factory<_i1028.CategoriesUseCase>(
      () => _i1028.CategoriesUseCase(gh<_i1039.HomeRepository>()),
    );
    gh.factory<_i1043.ProductsRepository>(
      () => _i701.ProductsRepositoryImpl(gh<_i234.ProductsDataSources>()),
    );
    gh.factory<_i797.AuthBloc>(
      () =>
          _i797.AuthBloc(gh<_i635.SignUpUseCase>(), gh<_i204.SignInUseCase>()),
    );
    gh.factory<_i621.BrandsUseCase>(
      () => _i621.BrandsUseCase(gh<_i1039.HomeRepository>()),
    );
    gh.factory<_i377.CartUseCase>(
      () => _i377.CartUseCase(gh<_i742.CartRepository>()),
    );
    gh.factory<_i270.AddProductToCartRepository>(
      () => _i115.AddProductToCartRepositoryImpl(
        gh<_i289.AddProductToCartDataSources>(),
      ),
    );
    gh.factory<_i335.AddProductToCartUseCase>(
      () =>
          _i335.AddProductToCartUseCase(gh<_i270.AddProductToCartRepository>()),
    );
    gh.factory<_i466.HomeBloc>(
      () => _i466.HomeBloc(
        gh<_i1028.CategoriesUseCase>(),
        gh<_i621.BrandsUseCase>(),
      ),
    );
    gh.factory<_i334.CategoriesBloc>(
      () => _i334.CategoriesBloc(
        gh<_i1028.CategoriesUseCase>(),
        gh<_i854.SubCategoriesUseCase>(),
      ),
    );
    gh.factory<_i998.ProductsUseCase>(
      () => _i998.ProductsUseCase(gh<_i1043.ProductsRepository>()),
    );
    gh.factory<_i517.CartBloc>(() => _i517.CartBloc(gh<_i377.CartUseCase>()));
    gh.factory<_i28.ProductBloc>(
      () => _i28.ProductBloc(
        gh<_i998.ProductsUseCase>(),
        gh<_i335.AddProductToCartUseCase>(),
      ),
    );
    return this;
  }
}

class _$NetworkModule extends _i1008.NetworkModule {}
