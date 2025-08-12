import 'package:bloc/bloc.dart';
import 'package:buy_vana/core/failures/failures.dart';
import 'package:buy_vana/features/main_layout/data/models/categories/category.dart';
import 'package:buy_vana/features/main_layout/data/models/sub_categories/sub_categories.dart';
import 'package:buy_vana/features/main_layout/domin/usecases/categories_use_case.dart';
import 'package:buy_vana/features/main_layout/domin/usecases/sub_categories_use_case.dart';
import 'package:injectable/injectable.dart';
part 'categories_event.dart';
part 'categories_state.dart';

@injectable
class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  final CategoriesUseCase categoriesUseCase;
  final SubCategoriesUseCase subCategoriesUseCase;

  CategoriesBloc(this.categoriesUseCase, this.subCategoriesUseCase) : super(CategoriesInitial()) {

    on<GetCategoriesEvent>((event, emit) async {
      emit(state.copyWith(categoriesRequestState: RequestState.loading));
      var response = await categoriesUseCase.call();
      emit(state.copyWith(categoriesRequestState: RequestState.loaded,categoryModel: response));
      add(GetSubCategoriesEvent(response?.first.id??""));
    });

    on<GetSubCategoriesEvent>((event, emit) async {
      emit(state.copyWith(subCategoriesRequestState: RequestState.loading));
      var response = await subCategoriesUseCase.call(event.categoryId);
      emit(state.copyWith(subCategoriesRequestState: RequestState.loaded,subCategoryModel: response));
    });

    on<ChangeCategoryEvent>((event, emit) async {
      emit(state.copyWith(selectedItem: event.index));
      add(GetSubCategoriesEvent(state.categoryModel?[state.selectedItem].id??""));

    });
  }
}
