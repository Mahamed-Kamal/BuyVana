import 'package:buy_vana/core/resources/theming/colors_manager.dart';
import 'package:buy_vana/core/resources/theming/my_styles.dart';
import 'package:buy_vana/core/route_manager/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubCategoryItem extends StatelessWidget {
  final String title;
  const SubCategoryItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context,Routes.productScreen),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                border: Border.all(
                    color: ColorsManager.mainBlue.withValues(alpha:0.3),
                    width: 2,
                )
              ),
              child: Icon(Icons.category_outlined,size: 50.sp,),
            ),
          ),
          Expanded(
            child: Text(
                title,
                style:MyStyles.font12DarkBlueRegular()),
          ),
        ],
      ),
    );
  }
}
