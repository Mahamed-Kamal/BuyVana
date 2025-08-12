import 'package:buy_vana/core/resources/theming/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class CategoriesListShimmer extends StatelessWidget {
  const CategoriesListShimmer({super.key});

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
            itemCount: 6, // عدد العناصر الوهمية
            itemBuilder: (context, index) => _shimmerItem(index),
          ),
        ),
      ),
    );
  }

  Widget _shimmerItem(int index) {
    return Shimmer.fromColors(
      baseColor: ColorsManager.lightGrey,
      highlightColor: ColorsManager.myWhite,
      child: Row(
        children: [
          // الشريط الأزرق في حالة التحديد (وهمي)
          Container(
            margin: EdgeInsets.only(left: 6.w, top: 6.h, bottom: 6.h),
            width: 8.w,
            height: 60.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              color: Colors.white,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 8.w),
              child: Container(
                height: 16.h,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
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
