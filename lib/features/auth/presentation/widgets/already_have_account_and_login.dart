import 'package:buy_vana/core/theming/colors_manager.dart';
import 'package:flutter/material.dart';
import '../../../../core/theming/my_styles.dart';

class AlreadyHaveAccountAndLogin extends StatelessWidget {
  const AlreadyHaveAccountAndLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          children: [
            TextSpan(
              text: "Already have an account?  ",
              style: MyStyles.font18BlueMedium().copyWith(
                fontSize: 16,
                color: ColorsManager.myBlack,
              ),
            ),
            TextSpan(
              text: "Login",
              style: MyStyles.font18BlueMedium(),

            ),
          ]
      ),
    );
  }
}
