import 'package:buy_vana/core/resources/theming/colors_manager.dart';
import 'package:buy_vana/core/resources/theming/my_styles.dart';
import 'package:buy_vana/features/main_layout/data/models/brands/brands.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GridViewBrandsItem extends StatelessWidget {
  final List<Brands> brandModel;
  final int index;
  const GridViewBrandsItem({super.key,required this.index, required this.brandModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CachedNetworkImage(
          height: 80.h,
          width: 100.w,
          fit: BoxFit.cover,
          imageUrl: brandModel[index].image??"",
          placeholder: (context, url) => const Center(child: CircularProgressIndicator(color: ColorsManager.mainBlue)),
          errorWidget: (context, url, error) => const Center(child: Icon(Icons.error,color:Colors.red)),
          imageBuilder: (context, imageProvider) {
            return Container(
                decoration:BoxDecoration(
            shape: BoxShape.rectangle,
            image: DecorationImage(image:imageProvider,fit: BoxFit.cover),
          ));
          }
        ),
        Text(
          brandModel[index].name??"",
          style: MyStyles.font14DarkBlueRegular(),
        ),
      ],
    );
  }
}
