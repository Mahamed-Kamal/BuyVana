import 'package:buy_vana/core/resources/theming/colors_manager.dart';
import 'package:buy_vana/core/resources/theming/my_styles.dart';
import 'package:buy_vana/features/main_layout/data/models/categories/category.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryCardItem extends StatelessWidget {
  final Category? categoryModel;
  const CategoryCardItem({super.key, required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16.h),
      height: 100.h,
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(12.r),
        child: Stack(
          children: [
            CachedNetworkImage(
              placeholder: (context, url) => const Center(child: CircularProgressIndicator(color: ColorsManager.mainBlue)),
              errorWidget: (context, url, error) => const Center(child: Icon(Icons.error,color:Colors.red)),
              imageUrl: categoryModel?.image??"",
              fit: BoxFit.cover,
              width: double.infinity,
              imageBuilder: (context, imageProvider) {
                return Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(image:imageProvider,fit: BoxFit.cover),
                  )
                );
              },
            ),
            Padding(
              padding:  EdgeInsets.symmetric(vertical: 8.h,horizontal: 16.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(categoryModel?.name??"",style: MyStyles.font16DarkBlueSemiBold()),
                  SizedBox(
                    width: 110.w,
                    height: 30.h,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ColorsManager.mainBlue,
                        fixedSize: Size(110.w, 30.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(10.r),
                        ),
                      ),
                        onPressed: (){},
                        child:Text("Shop Now",style: MyStyles.font12WhiteRegular())
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
