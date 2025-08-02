import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/resources/theming/colors_manager.dart';

class CustomBottomNavBar extends BottomNavigationBarItem {
  final String imagePath;
  final String title;

   CustomBottomNavBar({required this.title, required this.imagePath})
    : super(
        icon: SvgPicture.asset(imagePath),
        backgroundColor: ColorsManager.mainBlue,
        label: title,
        activeIcon: CircleAvatar(
          backgroundColor:  ColorsManager.myWhite,
          child: SvgPicture.asset(
            imagePath,
            colorFilter: const ColorFilter.mode(
              ColorsManager.mainBlue,
              BlendMode.srcIn,
            ),
          ),
        ),
      );
}
