import 'package:buy_vana/core/resources/theming/my_styles.dart';
import 'package:buy_vana/core/resources/utils/validators_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/app_text_form_field.dart';
import '../../../../core/widgets/custom_elevated_button.dart';
import '../../data/models/sign_up_request_model.dart';
import '../bloc/auth_bloc.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();

}

class _SignUpFormState extends State<SignUpForm> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  bool isObscureText = true;
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    fullNameController.dispose();
    emailController.dispose();
    mobileController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("Full Name",style:MyStyles.font18BlueMedium()),
          SizedBox(height: 24.h),
          AppTextFormField(
            hintText:"Enter Your Full Name",
            controller: fullNameController,
            validator: ValidatorsUtils.validateFullName,
            textInputType: TextInputType.text,
          ),
          SizedBox(height:32.h),
          Text("Mobile Number",style:MyStyles.font18BlueMedium()),
          SizedBox(height: 24.h),
          AppTextFormField(
            hintText:"Enter Your Mobile Number.",
            controller: mobileController,
            validator: (text) => ValidatorsUtils.validatePhoneNumber(text),
            textInputType: TextInputType.phone,
          ),
          SizedBox(height:32.h),
          Text("E-mail Address",style:MyStyles.font18BlueMedium()),
          SizedBox(height: 24.h),
          AppTextFormField(
            hintText:"Enter Your Email Address",
            controller: emailController,
            validator: ValidatorsUtils.validateEmail,
            textInputType:TextInputType.emailAddress,
          ),
          SizedBox(height:32.h),
          Text("Password",style:MyStyles.font18BlueMedium()),
          SizedBox(height: 24.h),
          AppTextFormField(
            hintText: "Enter Your Password",
            controller: passwordController,
            textInputType: TextInputType.text,
            validator: ValidatorsUtils.validatePassword,
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
              textButton: 'Create Account',
              onPressed: () => validateSignUp(),
          ),
        ],
      ),
    );
  }

  void validateSignUp() {
     FocusScope.of(context).unfocus();
    if (formKey.currentState!.validate()) {
      SignUpRequestModel model = SignUpRequestModel(
        name: fullNameController.text,
        email: emailController.text,
        password: passwordController.text,
        rePassword: passwordController.text,
        phone: mobileController.text
      );
      BlocProvider.of<AuthBloc>(context).add(SignUpEvent(model:model));
    }
  }
}
