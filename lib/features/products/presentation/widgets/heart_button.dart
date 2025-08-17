import 'package:buy_vana/core/resources/assets_manager.dart';
import 'package:buy_vana/core/resources/theming/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeartButton extends StatefulWidget {

  const HeartButton({super.key});

  @override
  State<HeartButton> createState() => _HeartButtonState();
}

class _HeartButtonState extends State<HeartButton> {
   bool isHeart = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6.h,horizontal: 6.w),
      child: CircleAvatar(
        backgroundColor: ColorsManager.myWhite,
        child: IconButton(
            onPressed: () {
              setState(() {
                isHeart = !isHeart;
              } );
            },
            icon: SvgPicture.asset(isHeart? SvgIcons.icHeartBlue: SvgIcons.icHeart)),
      ),
    );
  }
}
