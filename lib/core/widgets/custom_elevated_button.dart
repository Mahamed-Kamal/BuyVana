import 'package:buy_vana/core/resources/theming/colors_manager.dart';
import 'package:buy_vana/core/resources/theming/my_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevatedButton extends StatelessWidget {
  final String textButton;
  final TextStyle? textStyle;
  final double? borderRadius;
  final OutlinedBorder? shape;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? borderSideColor;
  final double? buttonHeight;
  final double? buttonWeight;
  final void Function() onPressed;

  const CustomElevatedButton({
    super.key,
    required this.textButton,
    this.textStyle,
    this.borderRadius,
    this.shape,
    this.backgroundColor,
    this.borderSideColor,
    this.buttonHeight,
    this.buttonWeight,
    required this.onPressed,
    this.foregroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(
          buttonWeight?.w ?? double.maxFinite,
          buttonHeight?.h ?? 62.h,
        ),

        backgroundColor: backgroundColor ?? ColorsManager.mainBlue,
        shape:
            shape ??
            RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(
                borderRadius?.r ?? 16.r,
              ),
              side: BorderSide(
                color: borderSideColor ?? ColorsManager.mainBlue,
              ),
            ),
      ),
      onPressed: onPressed,
      child: Text(
        textButton,
        style: textStyle ?? MyStyles.font20WhiteSemiBold(),
      ),
    );
  }
}
