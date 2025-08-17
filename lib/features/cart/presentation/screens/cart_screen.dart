import 'package:buy_vana/core/di/di.dart';
import 'package:buy_vana/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:buy_vana/features/cart/presentation/widget/app_bar_cart_widget.dart';
import 'package:buy_vana/features/cart/presentation/widget/list_view_cart_item_bloc_builder.dart';
import 'package:buy_vana/features/cart/presentation/widget/total_price_and_checkout_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CartBloc>()..add(GetCartEvent()),
      child: Scaffold(
        appBar: const AppBarCartWidget(),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(
              vertical: 16.h,
              horizontal: 16.w,
            ),
            child: Column(
              children: [
                const ListViewCartItemBlocBuilder(),
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
