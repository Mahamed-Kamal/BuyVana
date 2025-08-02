import 'package:buy_vana/core/api/api_services.dart';
import 'package:buy_vana/core/resources/theming/colors_manager.dart';
import 'package:buy_vana/features/auth/data/data_sources/remote/auth_data_source_remote_impl.dart';
import 'package:buy_vana/features/auth/data/repository/auth_repository_impl.dart';
import 'package:buy_vana/features/auth/domin/usecases/sign_in_use_case.dart';
import 'package:buy_vana/features/auth/domin/usecases/sign_up_use_case.dart';
import 'package:buy_vana/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/api/dio_factory.dart';
import '../widgets/already_have_account_and_login.dart';
import '../widgets/sign_up_bloc_listener.dart';
import '../widgets/sign_up_form.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(
        SignUpUseCase(AuthRepositoryImpl(AuthDataSourceRemoteImpl(ApiServices(DioFactory.getDio())))),
        SignInUseCase(AuthRepositoryImpl(AuthDataSourceRemoteImpl(ApiServices(DioFactory.getDio())))),
      ),
      child: Scaffold(
        backgroundColor: ColorsManager.myWhite,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 24.w),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 50.h),
                  const SignUpForm(),
                  SizedBox(height: 32.h),
                  const AlreadyHaveAccountAndLogin(),
                  const SignUpBlocListener(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
