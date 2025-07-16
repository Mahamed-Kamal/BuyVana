import 'package:buy_vana/core/theming/colors_manager.dart';
import 'package:buy_vana/core/theming/my_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/route_manager/routes.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import '../../../../core/widgets/custom_elevated_button.dart';
import '../widgets/have_account_and_create_account.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  ColorsManager.myWhite,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 24.w),
          child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height:50.h),
                    Text("Welcome Back To BuyVana",style: MyStyles.font24BlueSemiBold()),
                    Text("Please sign in with your mail",style: MyStyles.font16BlueLight()),
                    SizedBox(height: 40.h),
                    Text("User Name",style: MyStyles.font18BlueMedium()),
                    SizedBox(height: 24.h),
                    AppTextFormField(
                      hintText: "enter your name",
                    ),
                    SizedBox(height: 32.h),
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
                    SizedBox(height: 16.h),
                    Align(
                      alignment:AlignmentDirectional.centerEnd,
                        child: Text("Forgot password",style:MyStyles.font18BlueRegular())),
                    SizedBox(height: 56.h),
                    CustomElevatedButton(onPressed: (){},textButton: "Login",),
                    SizedBox(height: 32.h),
                    GestureDetector(
                      onTap: () => Navigator.pushReplacementNamed(context, Routes.signUpScreen),
                        child: const HaveAccountAndCreateAccount(),
                    ),
                  ]
              )
          ),
        ),
      ),
    );
  }
}
