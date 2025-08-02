import 'package:buy_vana/core/resources/assets_manager.dart';
import 'package:buy_vana/core/resources/theming/colors_manager.dart';
import 'package:buy_vana/core/resources/theming/my_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MainScreenAppBar extends StatelessWidget implements PreferredSizeWidget{
  const MainScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 120.h,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("BuyVana",style: MyStyles.font24BlueSemiBold()),
          SizedBox(height: 12.h),
          Row(
            children: [
              Expanded(
                child: TextField(
                  style: MyStyles.font16BlueRegular(),
                  decoration:  InputDecoration(
                    hintText:  "What do you search for ?",
                    hintStyle:  MyStyles.font14BlueLight(),
                    border: _getStyleBorder(),
                    enabledBorder: _getStyleBorder(),
                    disabledBorder: _getStyleBorder(),
                    focusedBorder: _getStyleBorder(),
                    prefixIcon: const Icon(Icons.search,color:ColorsManager.mainBlue),
                  ),

                ),
              ),
              SizedBox(width: 12.w,),
              IconButton(
                onPressed: (){},
                icon:SvgPicture.asset(SvgIcons.icShopping),
              ),

            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size(0, 120.h);

  OutlineInputBorder _getStyleBorder() {
    return  OutlineInputBorder(
      borderRadius: BorderRadius.circular(26.r),
      borderSide: const BorderSide(color: ColorsManager.mainBlue),
    );
  }
}
