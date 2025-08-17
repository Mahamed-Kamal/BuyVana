import 'package:buy_vana/core/resources/theming/colors_manager.dart';
import 'package:buy_vana/core/resources/theming/my_styles.dart';
import 'package:buy_vana/features/main_layout/data/models/categories/category.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GridViewCategoriesItem extends StatelessWidget {
  final List<Category> categoryModel;
  final int index;
  const GridViewCategoriesItem({super.key,required this.index, required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CachedNetworkImage(
          height: 100.h,
          width: 100.w,
          fit: BoxFit.cover,
          imageUrl: categoryModel[index].image?? "",
          placeholder: (context, url) => const Center(child: CircularProgressIndicator(color: ColorsManager.mainBlue)),
          errorWidget: (context, url, error) => const Center(child: Icon(Icons.error,color:Colors.red)),
          imageBuilder: (context, imageProvider) {
            return Container(decoration:BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image:imageProvider,fit: BoxFit.cover),
          ));
          }
        ),
        SizedBox(height: 8.h),
        Text(
          categoryModel[index].name??"",
          style: MyStyles.font14DarkBlueRegular(),
        ),
      ],
    );
  }
}
