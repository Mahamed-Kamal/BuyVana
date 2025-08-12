import 'package:buy_vana/features/main_layout/presentation/screens/home_tap/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'categories_shimmer_loading.dart';
import 'grid_view_horizontal_categories.dart';

class CategoriesBlocBuilder extends StatelessWidget {
  const CategoriesBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc,HomeState>(
      builder: (context, state) {
        if(state.categoriesRequestState == RequestState.loading){
           return isLoading();
        }else if(state.categoriesRequestState == RequestState.loaded){
          return isLoaded(state);
        }else{
          return SizedBox.shrink();
        }
    },);
  }
}

Widget isLoading (){
  return CategoriesShimmerLoading();
}
Widget isLoaded(HomeState state){
  return GridViewHorizontalCategories(categoryModel: state.categoryModel);
}
