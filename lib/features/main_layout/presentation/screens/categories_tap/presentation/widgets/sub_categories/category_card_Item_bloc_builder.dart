import 'package:buy_vana/features/main_layout/presentation/screens/categories_tap/presentation/bloc/categories_bloc.dart';
import 'package:buy_vana/features/main_layout/presentation/screens/categories_tap/presentation/widgets/category_card_item.dart';
import 'package:buy_vana/features/main_layout/presentation/screens/categories_tap/presentation/widgets/sub_categories/sub_category_text_shimmer.dart';
import 'package:buy_vana/features/main_layout/presentation/screens/categories_tap/presentation/widgets/sub_categories/sub_categoy_image_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../../../core/resources/theming/my_styles.dart';

class CategoryCardItemBlocBuilder extends StatelessWidget {
  const CategoryCardItemBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesBloc,CategoriesState>(
        builder: (context, state) {
          if(state.subCategoriesRequestState == RequestState.loading){
            return shimmerTextAndCategoryCard();
          }else if(state.subCategoriesRequestState == RequestState.loaded){
            return loadedTextAndCategoryCard(state);
          }else {
            return SizedBox.shrink();
          }
        },
    );
  }

  shimmerTextAndCategoryCard() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SubCategoryTextShimmer(),
        const SubCategoryImageShimmer(),
      ],
    );
  }

  Widget loadedTextAndCategoryCard(CategoriesState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          state.categoryModel?[state.selectedItem].name ?? "",
          style: MyStyles.font14DarkBlueMedium(),
        ),
        CategoryCardItem(
          categoryModel: state.categoryModel?[state.selectedItem],
        ),
      ],
    );
  }
}
