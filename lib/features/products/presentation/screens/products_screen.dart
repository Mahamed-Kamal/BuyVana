import 'package:buy_vana/core/di/di.dart';
import 'package:buy_vana/features/main_layout/presentation/widgets/main_screen_app_bar.dart';
import 'package:buy_vana/features/products/presentation/bloc/product_bloc.dart';
import 'package:buy_vana/features/products/presentation/widgets/product_widget_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProductBloc>()..add(GetProducts()),
      child: Scaffold(
        appBar: const MainScreenAppBar(),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 4.h),
            child: Column(
              children: [
                const ProductWidgetBlocBuilder(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
