import 'package:buy_vana/features/main_layout/presentation/screens/home_tap/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'brands_shimmer_loading.dart';
import 'grid_view_brands.dart';

class BrandBlocBuilder extends StatelessWidget {
  const BrandBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc,HomeState>(
      builder: (context, state) {
        if(state.brandsRequestState == RequestState.loading){
          return isLoadingState();
        }else if(state.brandsRequestState ==  RequestState.loaded){
          return isLoadedState(state);
        }else{
          return SizedBox.shrink();
        }

    },);
  }

  Widget isLoadingState (){
    return BrandsShimmerLoading();
  }
  Widget isLoadedState(HomeState state){
    return GridViewBrands(brandModel:state.brandModel);
  }
}
