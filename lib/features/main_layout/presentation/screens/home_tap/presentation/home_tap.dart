import 'package:buy_vana/core/di/di.dart';
import 'package:buy_vana/features/main_layout/presentation/screens/home_tap/bloc/home_bloc.dart';
import 'package:buy_vana/features/main_layout/presentation/screens/home_tap/widgets/brands/brand_bloc_builder.dart';
import 'package:buy_vana/features/main_layout/presentation/screens/home_tap/widgets/custom_ads_widget.dart';
import 'package:buy_vana/features/main_layout/presentation/screens/home_tap/widgets/custom_section_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/categories/home_bloc_builder.dart';

class HomeTap extends StatelessWidget {
  const HomeTap({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>getIt<HomeBloc>()..add(GetCategoriesEvent())..add(GetBrandsEvent()),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomAdsWidget(),
            const CustomSectionBar(text: "Categories", textButton: "View All",),
            const CategoriesBlocBuilder(),
            const CustomSectionBar(text:"Brands"),
            const BrandBlocBuilder(),

          ],
        ),
      ),
    );
  }
}
