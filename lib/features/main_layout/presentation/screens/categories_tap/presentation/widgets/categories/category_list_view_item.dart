import 'package:buy_vana/core/resources/theming/colors_manager.dart';
import 'package:buy_vana/core/resources/theming/my_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryListViewItem extends StatelessWidget {
  final int index;
  final String title;
  final bool isSelectedItem;
  final Function onItemClick;

  const CategoryListViewItem({
    super.key,
    required this.title,
    required this.isSelectedItem,
    required this.onItemClick,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onItemClick(index,context),
      child: Container(
        color: isSelectedItem? ColorsManager.myWhite : Colors.transparent,
        child: Row(
          children: [
            Visibility(
              visible: isSelectedItem,
              child: Container(
                margin: EdgeInsets.only(left: 6.w,top: 6.h,bottom: 6.h),
                width: 8.w,
                height: 60.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: ColorsManager.mainBlue,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 8.w),
                child: Text(
                  title,
                  style: MyStyles.font14DarkBlueMedium(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
