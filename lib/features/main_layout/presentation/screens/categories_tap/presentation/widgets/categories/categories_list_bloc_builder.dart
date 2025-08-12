import 'package:buy_vana/features/main_layout/presentation/screens/categories_tap/presentation/bloc/categories_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'categories_list.dart';
import 'categories_list_shimmer.dart';

class CategoriesListBlocBuilder extends StatelessWidget {
  const CategoriesListBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesBloc,CategoriesState>(
        builder:(context, state) {
          if(state.categoriesRequestState == RequestState.loading){
            return categoriesIsLoadingState();
          }else if(state.categoriesRequestState == RequestState.loaded){
            return categoriesIsLadingState(state,context);
          }else{
            return SizedBox.shrink();
          }
        },
    );
  }

  Widget categoriesIsLoadingState(){
    return const CategoriesListShimmer();
  }

  Widget categoriesIsLadingState(CategoriesState state,context) {
    return CategoriesList(categoryModel:state.categoryModel,selectedItem: state.selectedItem);

  }
}
