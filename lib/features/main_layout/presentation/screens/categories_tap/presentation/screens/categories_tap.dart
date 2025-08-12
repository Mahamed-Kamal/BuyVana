import 'package:buy_vana/core/di/di.dart';
import 'package:buy_vana/features/main_layout/presentation/screens/categories_tap/presentation/bloc/categories_bloc.dart';
import 'package:buy_vana/features/main_layout/presentation/screens/categories_tap/presentation/widgets/categories/categories_list_bloc_builder.dart';
import 'package:buy_vana/features/main_layout/presentation/screens/categories_tap/presentation/widgets/sub_categories_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesTap extends StatelessWidget {
  const CategoriesTap({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CategoriesBloc>()..add(GetCategoriesEvent()),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
        child: Row(
          children: [
            const CategoriesListBlocBuilder(),
            SizedBox(width: 12.w),
            const SubCategoriesList(),
          ],
        ),
      ),
    );
  }
}
