import 'package:buy_vana/core/di/di.dart';
import 'package:buy_vana/core/resources/assets_manager.dart';
import 'package:buy_vana/core/resources/theming/my_styles.dart';
import 'package:buy_vana/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:buy_vana/features/cart/presentation/widget/list_view_cart_item_bloc_builder.dart';
import 'package:buy_vana/features/cart/presentation/widget/total_price_and_checkout_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CartBloc>()..add(GetCartEvent()),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Cart", style: MyStyles.font20DarkBlueMedium()),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search, size: 34.sp),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(SvgIcons.icShopping),
            ),
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(
              vertical: 16.h,
              horizontal: 16.w,
            ),
            child: Column(
              children: [
                ListViewCartItemBlocBuilder(),
                // Expanded(
                //   child: ListView.separated(
                //     itemBuilder: (context, index) =>
                //         CartItemWidget(cartModel: state.cartModel, index: index),
                //     separatorBuilder: (context, index) => SizedBox(height: 12.h),
                //     itemCount:state.cartModel?.numOfCartItems ?? 0,
                //   ),
                // ),
                const Spacer(),
                TotalPriceAndCheckoutButton(
                  totalPrice: 3500,
                  checkoutButtonOnTap: () {},
                ),
                SizedBox(height: 20.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
