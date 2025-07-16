import 'package:buy_vana/core/theming/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/route_manager/routes.dart';
import '../../../../core/theming/my_styles.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import '../../../../core/widgets/custom_elevated_button.dart';
import '../widgets/already_have_account_and_login.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isObscureText = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.myWhite,
      body: SafeArea(
          child:Padding(
            padding:  EdgeInsets.symmetric(vertical: 24.h,horizontal:24.w),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height:50.h),
                  Text("Full Name",style: MyStyles.font18BlueMedium()),
                  SizedBox(height: 24.h),
                  const AppTextFormField(hintText:"enter your full name"),
                  SizedBox(height:32.h),
                  Text("Mobile Number",style: MyStyles.font18BlueMedium()),
                  SizedBox(height: 24.h),
                  const AppTextFormField(hintText:"enter your mobile no."),
                  SizedBox(height:32.h),
                  Text("E-mail address",style: MyStyles.font18BlueMedium()),
                  SizedBox(height: 24.h),
                  const AppTextFormField(hintText:"enter your email address"),
                  SizedBox(height:32.h),
                  Text("Password",style: MyStyles.font18BlueMedium()),
                  SizedBox(height: 24.h),
                  AppTextFormField(
                    hintText: "enter your password",
                    isObscureText: isObscureText,
                    suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            isObscureText =! isObscureText;
                          });
                        },
                        child: Icon(isObscureText?Icons.visibility_off:Icons.visibility)),
                  ),
                  SizedBox(height: 56.h),
                  CustomElevatedButton(
                      textButton: 'Create Account',onPressed: (){}
                  ),
                  SizedBox(height: 32.h),
                  GestureDetector(
                    onTap: () => Navigator.pushReplacementNamed(context, Routes.loginScreen),
                    child: const AlreadyHaveAccountAndLogin(),
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}
