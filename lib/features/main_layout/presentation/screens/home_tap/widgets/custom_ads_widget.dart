import 'dart:async';

import 'package:buy_vana/core/resources/assets_manager.dart';
import 'package:buy_vana/core/resources/theming/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAdsWidget extends StatefulWidget {
   const CustomAdsWidget({super.key});

  @override
  State<CustomAdsWidget> createState() => _CustomAdsWidgetState();
}

class _CustomAdsWidgetState extends State<CustomAdsWidget> {
  final List<String> adsImages =
    [
      AssetsImages.carouselSlider1,
      AssetsImages.carouselSlider2,
      AssetsImages.carouselSlider3,
    ];
  int currentIndex = 0;
  late final Timer timer;


  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 3),(_) {
      setState(() {
        currentIndex = (currentIndex + 1) % adsImages.length;
      });
    });
  }
  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.w),
      child: Stack(
        children: [
          AnimatedSwitcher(
            duration:Duration(milliseconds: 1500),
            child: Image.asset(
              adsImages[currentIndex],
              width: double.maxFinite,
              height: 210.h,
              key: ValueKey<int>(currentIndex),
            ),
          ),
          SizedBox(
            height: 210.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: adsImages.asMap().entries.map((image) {
                int index = image.key;
                return Container(
                  height: 10.h,
                  width: 10.w,
                  margin: EdgeInsets.symmetric(
                    horizontal: 4.0.w,
                    vertical: 12.0.h,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: index == currentIndex ? ColorsManager.mainBlue: ColorsManager.myWhite
                  ),
                );
              }).toList(),
            ),
          ),

        ],
      ),
    );
  }
}
