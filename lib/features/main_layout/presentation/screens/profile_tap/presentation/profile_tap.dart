import 'package:buy_vana/core/resources/theming/colors_manager.dart';
import 'package:buy_vana/core/resources/theming/my_styles.dart';
import 'package:buy_vana/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileTap extends StatelessWidget {
  const ProfileTap({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 16.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("BuyVana",style: MyStyles.font24BlueSemiBold()),
              SizedBox(height: 24.h),
              Text("Welcome,Mohamed",style: MyStyles.font18DarkBlueMedium()),
              SizedBox(height: 4.h),
              Text("mohamedkamal@gmail.com",style: MyStyles.font14darkBlueOpacityMedium()),
              SizedBox(height: 40.h),
              Text("Your full name",style: MyStyles.font18DarkBlueMedium()),
              SizedBox(height: 16.h),
              AppTextFormField(
                hintText: '',
                controller: TextEditingController(text: "Mohamed Kamal"),
                borderSideColor: ColorsManager.containerGray,
                suffixIcon: IconButton(onPressed: (){},icon: Icon(Icons.edit)),
              ),
              SizedBox(height: 24.h),
              Text("Your E-mail",style: MyStyles.font18DarkBlueMedium()),
              SizedBox(height: 16.h),
              AppTextFormField(
                hintText: '',
                controller: TextEditingController(text: "mohamedkamal@gmail.com"),
                borderSideColor: ColorsManager.containerGray,
                suffixIcon: IconButton(onPressed: (){},icon: Icon(Icons.edit)),
              ),
              SizedBox(height: 24.h),
              Text("Your mobile number",style: MyStyles.font18DarkBlueMedium()),
              SizedBox(height: 16.h),
              AppTextFormField(
                hintText: '',
                controller: TextEditingController(text: "01122118855"),
                borderSideColor: ColorsManager.containerGray,
                suffixIcon: IconButton(onPressed: (){},icon: Icon(Icons.edit)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
