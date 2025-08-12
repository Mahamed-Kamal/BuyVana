import 'package:buy_vana/core/resources/theming/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubCategoryTextShimmer extends StatelessWidget {
  const SubCategoryTextShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: ColorsManager.lightGrey,
      highlightColor: ColorsManager.myWhite,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 4.h),
        height: 20.h,
        width: 100.w,
        decoration: BoxDecoration(
          color: ColorsManager.lightGrey,
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
    );
  }
}