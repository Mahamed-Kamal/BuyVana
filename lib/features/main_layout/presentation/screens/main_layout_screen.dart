import 'package:buy_vana/core/resources/assets_manager.dart';
import 'package:buy_vana/core/resources/theming/colors_manager.dart';
import 'package:buy_vana/features/main_layout/presentation/screens/categories_tap/presentation/screens/categories_tap.dart';
import 'package:buy_vana/features/main_layout/presentation/screens/favourite_tap/presentation/favourite_tap.dart';
import 'package:buy_vana/features/main_layout/presentation/screens/home_tap/presentation/home_tap.dart';
import 'package:buy_vana/features/main_layout/presentation/screens/profile_tap/presentation/profile_tap.dart';
import 'package:buy_vana/features/main_layout/presentation/widgets/custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import '../widgets/main_screen_app_bar.dart';
import '../widgets/sized_and_border_radius.dart';


class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
   int selectedIndex = 0;

   List<Widget> tabs = [
    const HomeTap(),
    const CategoriesTap(),
    const FavouriteTap(),
    const ProfileTap(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: selectedIndex == 3 ? null :const MainScreenAppBar(),
      bottomNavigationBar: SizedAndBorderRadius(
        child: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          backgroundColor: ColorsManager.mainBlue,
          currentIndex: selectedIndex,
          onTap: (index) => selectedItem(index),
          items: [
            CustomBottomNavBar(imagePath: SvgIcons.icHome,      title: "Home"),
            CustomBottomNavBar(imagePath: SvgIcons.icCategory,  title: "Categories"),
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
