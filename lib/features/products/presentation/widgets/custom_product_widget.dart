import 'package:buy_vana/core/resources/theming/colors_manager.dart';
import 'package:buy_vana/core/resources/theming/my_styles.dart';
import 'package:buy_vana/features/products/data/models/product/products.dart';
import 'package:buy_vana/features/products/presentation/bloc/product_bloc.dart';
import 'package:buy_vana/features/products/presentation/widgets/row_price_and_quantity.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'heart_button.dart';

class CustomProductWidget extends StatefulWidget {
  final Products? products;
  const CustomProductWidget({super.key, required this.products});

  @override
  State<CustomProductWidget> createState() => _CustomProductWidgetState();
}

class _CustomProductWidgetState extends State<CustomProductWidget> {
  bool isHeart = false;

  String truncateTitle(String title) {
    List<String> words = title.split(' ');
    if (words.length <= 2) {
      return title;
    } else {
      return "${words.sublist(0, 2).join(' ')}..";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
       // width: 192.w,
       // height: 238.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: ColorsManager.containerGray, width: 2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                CachedNetworkImage(
                  imageUrl: widget.products?.imageCover ?? "",
                  fit: BoxFit.cover,
                  placeholder: (context, url) => Center(child: CircularProgressIndicator(color: ColorsManager.mainBlue)),
                  errorWidget: (context, url, error) => const Center(child: Icon(Icons.error)),
                  imageBuilder: (context, imageProvider) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(14.r),topLeft:Radius.circular(14.r)),
                        image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
                const HeartButton(),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.w,vertical: 4.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  truncateTitle(widget.products?.title ?? ""),
                  style: MyStyles.font14DarkBlueRegular(),
                ),
                SizedBox(height: 2.h),
                Text(
                  widget.products?.description ?? "",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: MyStyles.font14DarkBlueRegular(),
                ),
                SizedBox(height: 6.h),
                RowPriceAndQuantity(price:widget.products?.price,quantity: widget.products?.quantity,),
                Row(
                  children: [
                    Text("Review (${widget.products?.ratingsAverage})"),
                    const Icon(
                      Icons.star_rate_rounded,
                      color: ColorsManager.starRateColor,
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        BlocProvider.of<ProductBloc>(context).add(GetAddProductToCartEvent(widget.products?.id??""));
                      },
                      child: CircleAvatar(
                        backgroundColor: ColorsManager.mainBlue,
                        radius: 18.r,
                        child: const Icon(Icons.add, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
