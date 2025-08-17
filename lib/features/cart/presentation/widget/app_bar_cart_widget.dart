import 'package:buy_vana/core/resources/theming/my_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarCartWidget extends StatelessWidget implements PreferredSizeWidget{
  const AppBarCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Cart", style: MyStyles.font20DarkBlueMedium()),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search, size: 34.sp),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size(0,60.h);
}
