import 'package:buy_vana/features/main_layout/presentation/screens/categories_tap/presentation/bloc/categories_bloc.dart';
import 'package:buy_vana/features/main_layout/presentation/screens/categories_tap/presentation/widgets/sub_categories/sub_category_item.dart';
import 'package:buy_vana/features/main_layout/presentation/screens/categories_tap/presentation/widgets/sub_categories/sub_category_item_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GridViewBlocBuilder extends StatelessWidget {
  const GridViewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesBloc,CategoriesState>(
        builder: (context, state) {
          if(state.subCategoriesRequestState == RequestState.loading){
            return subCategoryIsLoading();
          }else if (state.subCategoriesRequestState == RequestState.loaded){
            return subCategoryIsLoaded(state);
          }else{
            return SizedBox.shrink();
          }
        },
    );
  }

   Widget subCategoryIsLoading() {
    return GridView.builder(
      itemCount: 3,
      itemBuilder: (context, index) => SubCategoryItemShimmer(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 0.80.sp,
        mainAxisSpacing: 16.h,
        crossAxisSpacing: 14.h,
      ),
    );
  }

   Widget subCategoryIsLoaded(CategoriesState state) {
    return GridView.builder(
      itemBuilder: (context, index) => SubCategoryItem(
        title: state.subCategoryModel?[index].name ?? "",
      ),
      itemCount: state.subCategoryModel?.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 0.80.sp,
        mainAxisSpacing: 16.h,
        crossAxisSpacing: 14.h,
      ),
    );
  }
}
