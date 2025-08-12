import 'package:bloc/bloc.dart';
import 'package:buy_vana/core/failures/failures.dart';
import 'package:buy_vana/features/main_layout/data/models/brands/brands.dart';
import 'package:buy_vana/features/main_layout/data/models/categories/category.dart';
import 'package:buy_vana/features/main_layout/domin/usecases/brands_use_case.dart';
import 'package:buy_vana/features/main_layout/domin/usecases/categories_use_case.dart';
import 'package:injectable/injectable.dart';
part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
   CategoriesUseCase categoriesUseCase;
   BrandsUseCase brandsUseCase;
   HomeBloc(this.categoriesUseCase,this.brandsUseCase) : super(HomeInitial()) {
    on<GetCategoriesEvent>((event, emit) async {
      emit(state.copyWith(categoriesRequestState:RequestState.loading));
      var response = await categoriesUseCase.call();
        emit(state.copyWith(categoriesRequestState: RequestState.loaded,categoryModel: response));
    });
    on<GetBrandsEvent>((event, emit) async {
      emit(state.copyWith(brandsRequestState: RequestState.loading));
      var response = await brandsUseCase.call();
      emit(state.copyWith(brandsRequestState: RequestState.loaded,brandModel:response));
    });
  }
}
