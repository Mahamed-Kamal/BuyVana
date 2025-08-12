import 'package:buy_vana/core/resources/theming/colors_manager.dart';
import 'package:buy_vana/core/resources/theming/my_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final String hintText;
  final TextStyle? hintStyle;
  final double? borderRadius;
  final Color? borderSideColor;
  final OutlineInputBorder? outlineInputBorder;
  final Widget? suffixIcon;
  final bool? isObscureText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final TextInputType? textInputType;

  const AppTextFormField({
    super.key,
    required this.hintText,
    this.hintStyle,
    this.borderRadius,
    this.borderSideColor,
    this.outlineInputBorder,
    this.suffixIcon,
    this.isObscureText,
    required this.controller,
    this.validator,
    this.textInputType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        isDense: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        hintText: hintText,
        hintStyle: hintStyle ?? MyStyles.font18BlueLight(),
        enabledBorder: outlineInputBorder ?? OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius?.r ?? 16.r),
              borderSide:
                  BorderSide(color: borderSideColor ?? ColorsManager.mainBlue, width: 1),
            ),
        focusedBorder: outlineInputBorder ?? OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius?.r ?? 16.r),
              borderSide:
                  BorderSide(color: borderSideColor ?? ColorsManager.mainBlue, width: 1),
            ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius?.r ?? 16.r),
          borderSide: BorderSide(color: borderSideColor ?? Colors.red, width: 1),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius?.r ?? 16.r),
          borderSide: BorderSide(color: borderSideColor ?? Colors.red, width: 1),
        ),
        suffixIcon: suffixIcon,
        suffixIconColor: ColorsManager.darkBlue
      ),
      onFieldSubmitted: (_) => FocusScope.of(context).unfocus(),
      obscureText: isObscureText ?? false,
      cursorColor: ColorsManager.mainBlue,
      controller: controller,
      validator: validator,
      keyboardType: textInputType ?? TextInputType.text,
      style: MyStyles.font18DarkBlueRegular(),
      onTapOutside: (_) => FocusScope.of(context).unfocus(),
    );
  }
}
