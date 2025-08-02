import 'package:buy_vana/core/route_manager/routes.dart';
import 'package:buy_vana/features/main_layout/main_layout.dart';
import 'package:flutter/material.dart';
import '../../features/auth/presentation/screens/sign_in_screen.dart';
import '../../features/auth/presentation/screens/sign_up_screen.dart';

class RouteGenerator {
  static Route<dynamic>? getRoute(RouteSettings setting) {
    switch (setting.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.signUpScreen:
        return MaterialPageRoute(builder: (_) =>   const SignUpScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) =>   const MainLayout());
      default:
        return null;
    }
  }

  // static Route<dynamic> unDefinedRoute() {
  //   return MaterialPageRoute(
  //     builder: (_) => Scaffold(
  //       appBar: AppBar(title: const Text('No Route Found')),
  //       body: const Center(child: Text('No Route Found')),
  //     ),
  //   );
  // }
}
