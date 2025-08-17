import 'package:buy_vana/features/main_layout/presentation/screens/categories_tap/presentation/widgets/sub_categories/category_card_Item_bloc_builder.dart';
import 'package:buy_vana/features/main_layout/presentation/screens/categories_tap/presentation/widgets/sub_categories/silver_grid_bloc_builder.dart';
import 'package:flutter/material.dart';

class SubCategoriesList extends StatelessWidget {
  const SubCategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        children: [
          const CategoryCardItemBlocBuilder(),
          const Expanded(child:GridViewBlocBuilder(),
          ),
        ],
      ),
    );
  }
}
