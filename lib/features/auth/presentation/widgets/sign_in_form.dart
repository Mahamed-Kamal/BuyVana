import 'package:buy_vana/core/resources/theming/my_styles.dart';
import 'package:buy_vana/core/resources/utils/validators_utils.dart';
import 'package:buy_vana/features/auth/data/models/sign_in_request_model.dart';
import 'package:buy_vana/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/app_text_form_field.dart';
import '../../../../core/widgets/custom_elevated_button.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  bool isObscureText = true;

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("User Name",style: MyStyles.font18BlueMedium()),
          SizedBox(height: 24.h),
          AppTextFormField(
            hintText: "Enter Your Email",
            validator: ValidatorsUtils.validateEmail,
            textInputType: TextInputType.emailAddress,
            controller: emailController,
          ),
          SizedBox(height: 32.h),
          Text("Password",style: MyStyles.font18BlueMedium()),
          SizedBox(height: 24.h),
          AppTextFormField(
            hintText: "Enter Your Password",
            validator: ValidatorsUtils.validateLoginPassword,
            textInputType: TextInputType.text,
            isObscureText: isObscureText,
            controller: passwordController,
            suffixIcon: _clickedIcon(),
          ),
          SizedBox(height: 16.h),
          Align(
              alignment:AlignmentDirectional.centerEnd,
              child: Text("Forgot password?",style:MyStyles.font18BlueRegular())
          ),
          SizedBox(height: 56.h),
          CustomElevatedButton(
            onPressed: () => validateSignIn(),
            textButton:"Login"
          ),
        ],
      ),
    );
  }
  Widget _clickedIcon() {
    return GestureDetector(
        onTap: () {
          setState(() {
            isObscureText =! isObscureText;
          });
        },
        child: Icon(isObscureText?Icons.visibility_off:Icons.visibility));
  }
  void validateSignIn(){
    FocusScope.of(context).unfocus();
    if(formKey.currentState!.validate()){
      SignInRequestModel signInRequestModel= SignInRequestModel(
        email: emailController.text,
        password: passwordController.text,
      );
      BlocProvider.of<AuthBloc>(context).add(SignInEvent(signInRequestModel));
    }
  }

}
