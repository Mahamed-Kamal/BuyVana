import 'package:buy_vana/core/resources/theming/colors_manager.dart';
import 'package:buy_vana/core/resources/theming/my_styles.dart';
import 'package:buy_vana/features/cart/data/models/get_carts_data_response.dart';
import 'package:buy_vana/features/cart/presentation/widget/product_counter.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartItemWidget extends StatelessWidget {
  final GetCartsDataResponse? cartModel;
  final int index;


  const CartItemWidget({super.key, required this.cartModel, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(
          color: ColorsManager.containerGray,
        )
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: 124.h,
              width: 120.w,
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: CachedNetworkImage(
                 imageUrl: cartModel?.data?.products?[index].product?.imageCover??"",
                placeholder: (context, url) => const Center(child: CircularProgressIndicator(color: ColorsManager.mainBlue)),
                errorWidget: (context, url, error) => const Icon(Icons.error),
                imageBuilder: (context, imageProvider) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      border: Border.all(
                        color: ColorsManager.containerGray
                      ),
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                }
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal:8.w),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text(cartModel?.data?.products?[index].product?.title??"",style: MyStyles.font18DarkBlueMedium()),
                    InkWell(
                      onTap: (){},
                      child: Icon(CupertinoIcons.delete,color: ColorsManager.darkBlue)
                    ),
                  ],),
                  Text(""),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('EGP ${cartModel?.data?.products?[index].price ?? ""}',style: MyStyles.font18DarkBlueMedium()),
                      ProductCounter(productCounter: 1),
                    ],
                  ),
                ],
              ),
            ),
          ),

        ],
      ),

    );
  }
}
