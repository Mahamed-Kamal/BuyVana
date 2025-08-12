import 'package:buy_vana/features/main_layout/data/models/categories/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'grid_view_categories_Item.dart';

class GridViewHorizontalCategories extends StatelessWidget {
  final List<Category>? categoryModel;
  const GridViewHorizontalCategories({super.key, required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270.h,
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          scrollDirection: Axis.horizontal,
          itemCount: categoryModel?.length,
          itemBuilder: (context, index) => GridViewCategoriesItem(
              categoryModel: categoryModel??[],
              index:index
          ),
      ),

    );
  }
}
