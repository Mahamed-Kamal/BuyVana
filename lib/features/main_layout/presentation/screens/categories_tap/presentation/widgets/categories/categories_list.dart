import 'package:buy_vana/core/resources/theming/colors_manager.dart';
import 'package:buy_vana/features/main_layout/data/models/categories/category.dart';
import 'package:buy_vana/features/main_layout/presentation/screens/categories_tap/presentation/bloc/categories_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'category_list_view_item.dart';

class CategoriesList extends StatelessWidget {
  final List<Category>? categoryModel;
  final int selectedItem;
  const CategoriesList({super.key,required this.categoryModel, required this.selectedItem});

  // int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: ColorsManager.containerGray,
          border: Border(
            left: _getBorderSide(),
            top: _getBorderSide(),
            bottom: _getBorderSide(),
          ),
          borderRadius: _getBorderRadius(),
        ),
        child: ClipRRect(
          borderRadius: _getBorderRadius(),
          child: ListView.builder(
            itemCount: categoryModel?.length,
            itemBuilder: (context, index) => CategoryListViewItem(
              title: categoryModel?[index].name??"",
              isSelectedItem: selectedItem == index,
              index: index,
              onItemClick: onItemClick,
            ),
          ),
        ),
      ),
    );
  }

  onItemClick(int index,BuildContext context) {
    BlocProvider.of<CategoriesBloc>(context).add(ChangeCategoryEvent(index));
    // setState(() {
    //   selectedItem = index;
    // });
  }

  BorderSide _getBorderSide() {
    return BorderSide(
      width: 2.w,
      color: ColorsManager.mainBlue.withValues(alpha: 0.3),
    );
  }

  BorderRadius _getBorderRadius() {
    return BorderRadius.only(
      topLeft: Radius.circular(12.r),
      bottomLeft: Radius.circular(12.r),
    );
  }
}
