import 'package:buy_vana/core/resources/theming/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class SubCategoryImageShimmer extends StatelessWidget {
  const SubCategoryImageShimmer ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.symmetric(vertical: 16.h),
      height: 100.h,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.r),
        child: Stack(
          children: [
            // الخلفية
            Shimmer.fromColors(
              baseColor: ColorsManager.lightGrey,
              highlightColor: ColorsManager.myWhite,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: ColorsManager.lightGrey,
              ),
            ),
            // النص والزرار
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // مكان العنوان
                  Shimmer.fromColors(
                    baseColor: ColorsManager.lightGrey,
                    highlightColor: ColorsManager.myWhite,
                    child: Container(
                      width: 100.w,
                      height: 16.h,
                      color: ColorsManager.lightGrey,
                    ),
                  ),
                  // مكان الزرار
                  Shimmer.fromColors(
                    baseColor: ColorsManager.lightGrey,
                    highlightColor: ColorsManager.myWhite,
                    child: Container(
                      width: 110.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                        color: ColorsManager.lightGrey,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
