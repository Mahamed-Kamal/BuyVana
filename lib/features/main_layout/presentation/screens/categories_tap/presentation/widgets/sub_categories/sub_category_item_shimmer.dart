import 'package:buy_vana/core/resources/theming/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class SubCategoryItemShimmer extends StatelessWidget {
  const SubCategoryItemShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: Shimmer.fromColors(
            baseColor: ColorsManager.lightGrey,
            highlightColor: ColorsManager.myWhite,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: Colors.white,
              ),
            ),
          ),
        ),
        SizedBox(height: 4.h),
        Expanded(
          child: Shimmer.fromColors(
            baseColor: ColorsManager.lightGrey,
            highlightColor: ColorsManager.myWhite,
            child: Container(
              width: double.infinity,
              height: 8.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}