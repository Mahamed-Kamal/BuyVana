import 'package:buy_vana/core/theming/colors_manager.dart';
import 'package:flutter/material.dart';
import '../../../../core/theming/my_styles.dart';

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
                fontSize: 16,
                color: ColorsManager.myBlack,
              ),
            ),
            TextSpan(
              text: "Create Account",
              style: MyStyles.font18BlueMedium(),

            ),
          ]
        ),
    );
  }
}
