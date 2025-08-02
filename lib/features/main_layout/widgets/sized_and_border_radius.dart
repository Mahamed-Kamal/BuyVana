import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SizedAndBorderRadius extends StatelessWidget {
  final Widget child;

  const SizedAndBorderRadius({super.key,required this.child});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.r),
          topRight: Radius.circular(16.r),
        ),
        child: SizedBox(
          height: 140.h,
          child: child,
        ));
  }
}