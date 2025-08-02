import 'package:buy_vana/core/resources/theming/colors_manager.dart';
import 'package:buy_vana/core/resources/theming/my_styles.dart';
import 'package:buy_vana/core/route_manager/routes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HaveAccountAndCreateAccount extends StatelessWidget {
  const HaveAccountAndCreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: "Don’t have an account?  ",
              style: MyStyles.font18BlueMedium().copyWith(
                fontSize: 16.sp,
                color: ColorsManager.myBlack,
              ),
            ),
            WidgetSpan(child: SizedBox(width: 8.w)),
            TextSpan(
              text: "Create Account",
              style: MyStyles.font18BlueMedium(),
              recognizer: TapGestureRecognizer()
                ..onTap = (){
                Navigator.pushNamedAndRemoveUntil(context, Routes.signUpScreen, (route) => false);
                },
            ),
          ]
        ),
    );
  }
}
