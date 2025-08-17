import 'package:buy_vana/core/resources/theming/colors_manager.dart';
import 'package:buy_vana/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:buy_vana/features/cart/presentation/widget/cart_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListViewCartItemBlocBuilder extends StatelessWidget {
  const ListViewCartItemBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          if(state.cartRequestStata == RequestStata.loading){
            return isCartLoadingState();
          }
          else if(state.cartRequestStata == RequestStata.loading){
            return isCartLoadedState(state);
          }else{
            return SizedBox.shrink();
          }
        },
    );
  }

  Widget isCartLoadingState() {
    return Column(
      children: [
        Center(child: CircularProgressIndicator(color: ColorsManager.mainBlue)),
      ],
    );
  }

  Widget isCartLoadedState(CartState state) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) =>
            CartItemWidget(cartModel: state.cartModel, index: index),
        separatorBuilder: (context, index) => SizedBox(height: 12.h),
        itemCount:state.cartModel?.numOfCartItems ?? 0,
      ),
    );
  }
}
