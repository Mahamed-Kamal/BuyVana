import 'package:buy_vana/core/resources/theming/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class BrandsShimmerLoading extends StatelessWidget {
  const BrandsShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220.h,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ClipRRect(
               borderRadius: BorderRadius.circular(100.r),
                child: Shimmer.fromColors(
                  baseColor: ColorsManager.lightGrey,
                  highlightColor: ColorsManager.myWhite,
                  child: Container(
                    height: 80.h,
                    width: 100.w,
                    decoration:  BoxDecoration(
                      color: ColorsManager.lightGrey,
                      shape: BoxShape.rectangle,
                    ),
                    child: SizedBox.shrink(),
                  ),
                ),
              ),
              SizedBox(height: 8.h),
              Shimmer.fromColors(
                baseColor: ColorsManager.lightGrey,
                highlightColor: ColorsManager.myWhite,
                child: Container(
                  height: 14.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                    color: ColorsManager.lightGrey,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ],
          );



        },
      ),

    );
  }
}
