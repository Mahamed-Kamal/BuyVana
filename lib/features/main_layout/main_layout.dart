import 'package:buy_vana/core/resources/assets_manager.dart';
import 'package:buy_vana/core/resources/theming/colors_manager.dart';
import 'package:buy_vana/features/main_layout/category_tap/category_tap.dart';
import 'package:buy_vana/features/main_layout/favourite_tap/favourite_tap.dart';
import 'package:buy_vana/features/main_layout/home_tap/home_tap.dart';
import 'package:buy_vana/features/main_layout/profile_tap/profile_tap.dart';
import 'package:buy_vana/features/main_layout/widgets/custom_bottom_nav_bar.dart';
import 'package:buy_vana/features/main_layout/widgets/main_screen_app_bar.dart';
import 'package:buy_vana/features/main_layout/widgets/sized_and_border_radius.dart';
import 'package:flutter/material.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
   int selectedIndex = 0;

   List<Widget> tabs = [
    const HomeTap(),
    const CategoryTap(),
    const FavouriteTap(),
    const ProfileTap(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainScreenAppBar(),
      bottomNavigationBar: SizedAndBorderRadius(
        child: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          backgroundColor: ColorsManager.mainBlue,
          currentIndex: selectedIndex,
          onTap: (index) => selectedItem(index),
          items: [
            CustomBottomNavBar(imagePath: SvgIcons.icHome,      title: "Home"),
            CustomBottomNavBar(imagePath: SvgIcons.icCategory,  title: "Category"),
            CustomBottomNavBar(imagePath: SvgIcons.icFavourite, title: "Favourite"),
            CustomBottomNavBar(imagePath: SvgIcons.icProfile,   title: "Profile"),
          ],
        ),
      ),
      body: tabs[selectedIndex],
    );
  }

  void selectedItem(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
