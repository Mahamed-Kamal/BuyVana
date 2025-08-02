import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/resources/theming/colors_manager.dart';
import 'core/route_manager/route_generator.dart';
import 'core/route_manager/routes.dart';
import 'main.dart';

class BuyVanaApp extends StatelessWidget {
  const BuyVanaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: ColorsManager.myWhite,
          appBarTheme: AppBarTheme(
            backgroundColor: ColorsManager.myWhite,
            surfaceTintColor: ColorsManager.myWhite,
          ),
          textSelectionTheme: TextSelectionThemeData(
             cursorColor: ColorsManager.mainBlue,
            selectionColor: ColorsManager.mainBlue.withAlpha(100),
            selectionHandleColor: ColorsManager.mainBlue,
          )
        ),
        debugShowCheckedModeBanner: false,
        home: child,
        onGenerateRoute: RouteGenerator.getRoute,
        initialRoute: isLoggedInUser ? Routes.homeScreen : Routes.loginScreen,
      ),
    );
  }
}
