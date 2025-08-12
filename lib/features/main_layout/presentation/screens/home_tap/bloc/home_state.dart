part of 'home_bloc.dart';

enum RequestState {init, loading, loaded, error}

class HomeState {
  final List<Category>? categoryModel;
  final List<Brands>? brandModel;
  final RequestState? categoriesRequestState;
  final RequestState? brandsRequestState;
  final Failures? failures;

  const HomeState(
      {this.categoryModel, this.categoriesRequestState, this.failures,this.brandModel,this.brandsRequestState});

  HomeState copyWith({
    List<Category>? categoryModel,
    RequestState? categoriesRequestState,
    RequestState? brandsRequestState,
    Failures? failures,List<Brands>? brandModel}){
    return HomeState(
        brandModel: brandModel ?? this.brandModel,
        categoryModel:categoryModel??this.categoryModel,
        categoriesRequestState: categoriesRequestState?? this.categoriesRequestState,
        brandsRequestState: brandsRequestState?? this.brandsRequestState,
       failures:failures ?? this.failures
    );
  }
}

final class HomeInitial extends HomeState {
  HomeInitial():super(categoriesRequestState: RequestState.init);
}
