part of 'categories_bloc.dart';
enum RequestState {init,loading,loaded,error}

class CategoriesState {
  final List<Category>? categoryModel;
  final List<SubCategories>? subCategoryModel;
  final RequestState? categoriesRequestState;
  final RequestState? subCategoriesRequestState;
  final Failures? failures;
  final int selectedItem ;


  const CategoriesState({
    this.subCategoryModel,this.subCategoriesRequestState,this.categoryModel,this.categoriesRequestState,this.failures,this.selectedItem=0});

  CategoriesState copyWith ({
    List<Category>? categoryModel,
    RequestState? categoriesRequestState,
    RequestState? subCategoriesRequestState,
    Failures? failures,
    List<SubCategories>? subCategoryModel,
    int? selectedItem
  }) {
    return CategoriesState(
      selectedItem: selectedItem ?? this.selectedItem,
        subCategoriesRequestState: subCategoriesRequestState ?? this.categoriesRequestState,
        subCategoryModel: subCategoryModel?? this.subCategoryModel,
        categoryModel: categoryModel?? this.categoryModel,
        categoriesRequestState: categoriesRequestState ?? this.categoriesRequestState,
        failures: failures?? this.failures
    );
  }

}

final class CategoriesInitial extends CategoriesState {
  CategoriesInitial():super(categoriesRequestState: RequestState.init,subCategoriesRequestState: RequestState.init);
}
