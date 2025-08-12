part of 'categories_bloc.dart';


abstract class CategoriesEvent {}

class GetCategoriesEvent extends CategoriesEvent {
  GetCategoriesEvent();
}
class GetSubCategoriesEvent extends CategoriesEvent {
  String categoryId;
  GetSubCategoriesEvent(this.categoryId);
}
class ChangeCategoryEvent extends CategoriesEvent {
  int index;
  ChangeCategoryEvent(this.index);
}
