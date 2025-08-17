import 'package:buy_vana/core/resources/theming/colors_manager.dart';
import 'package:buy_vana/features/products/presentation/bloc/product_bloc.dart';
import 'package:buy_vana/features/products/presentation/widgets/custom_product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductWidgetBlocBuilder extends StatelessWidget {

  const ProductWidgetBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc,ProductState>(
        builder: (context, state) {
          if(state.productsRequestState ==  RequestState.loading){
            return isProductLoadingState();
          } else if(state.productsRequestState ==  RequestState.loaded){
            return  isProductLoadedState(state);
          }else {
            return SizedBox.shrink();
          }
        },
    );
  }

   Widget isProductLoadingState() {
      return Center(child: CircularProgressIndicator(color: ColorsManager.mainBlue));
  }

  Widget isProductLoadedState (ProductState state) {
    return Expanded(
      child: GridView.builder(
        itemCount: state.products?.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16.h,
          crossAxisSpacing: 16.w,
          childAspectRatio: 0.80.sp,
        ),
        itemBuilder: (context, index) => CustomProductWidget(products:state.products?[index]),
      ),
    );
  }

}
