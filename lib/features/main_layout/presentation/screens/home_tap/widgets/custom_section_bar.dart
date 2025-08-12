import 'package:buy_vana/core/resources/theming/my_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSectionBar extends StatelessWidget {
  final String text;
  final String? textButton;
  final void Function()? onPressed;
  const CustomSectionBar({super.key, required this.text, this.textButton, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal:16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text,style: MyStyles.font18DarkBlueMedium()),
          TextButton(onPressed:onPressed, child: Text(textButton??"",style: MyStyles.font12DarkBlueRegular()))
        ],
      ),
    );
  }
}
