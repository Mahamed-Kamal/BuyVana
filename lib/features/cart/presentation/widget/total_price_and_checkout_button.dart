import 'package:buy_vana/core/resources/theming/my_styles.dart';
import 'package:buy_vana/core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TotalPriceAndCheckoutButton extends StatelessWidget {
  final int totalPrice;
  final void Function() checkoutButtonOnTap;
  const TotalPriceAndCheckoutButton({super.key, required this.totalPrice, required this.checkoutButtonOnTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
           children: [
          Text('Total price',style: MyStyles.font18DarkBlueOpacityMedium()),
          SizedBox(height: 8.h),
          Text('EGP $totalPrice',style:MyStyles.font18DarkBlueMedium()),
        ]),
        SizedBox(width:30.w),
        Expanded(child: CustomElevatedButton(textButton: "Check Out", onPressed: (){},borderRadius: 30)),
      ],
    );
  }
}
