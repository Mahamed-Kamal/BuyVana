part of 'home_bloc.dart';

abstract class HomeEvent {}

class GetCategoriesEvent extends HomeEvent {
  GetCategoriesEvent();
}
class GetBrandsEvent extends HomeEvent {
  GetBrandsEvent();
}
