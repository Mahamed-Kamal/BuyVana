import 'package:buy_vana/core/api/api_services.dart';
import 'package:buy_vana/core/api/dio_factory.dart';
import 'package:buy_vana/core/di/di.dart';
import 'package:buy_vana/core/resources/theming/colors_manager.dart';
import 'package:buy_vana/core/resources/theming/my_styles.dart';
import 'package:buy_vana/features/auth/data/data_sources/remote/auth_data_source_remote_impl.dart';
import 'package:buy_vana/features/auth/data/repository/auth_repository_impl.dart';
import 'package:buy_vana/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/have_account_and_create_account.dart';
import '../widgets/sign_in_bloc_listener.dart';
import '../widgets/sign_in_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
  create: (context) => getIt<AuthBloc>(),
  child: Scaffold(
      backgroundColor: ColorsManager.myWhite,
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
                    const SignInForm(),
                    SizedBox(height: 32.h),
                    const HaveAccountAndCreateAccount(),
                    const SignInBlocListener(),
                  ]
              )
          ),
        ),
      ),
    ),
);
  }
}
