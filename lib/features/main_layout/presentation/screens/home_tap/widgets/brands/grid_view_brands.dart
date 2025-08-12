import 'package:buy_vana/features/main_layout/data/models/brands/brands.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'grid_view_brands_Item.dart';

class GridViewBrands extends StatelessWidget {
  final List<Brands>? brandModel;
  const GridViewBrands({super.key, required this.brandModel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:220.h,
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          scrollDirection: Axis.horizontal,
          itemCount: brandModel?.length,
          itemBuilder: (context, index) => GridViewBrandsItem(
            brandModel:brandModel??[],
              index:index,
          ),
      ),

    );
  }
}
