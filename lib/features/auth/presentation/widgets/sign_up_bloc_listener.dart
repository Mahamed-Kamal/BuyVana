import 'package:buy_vana/core/resources/theming/colors_manager.dart';
import 'package:buy_vana/core/resources/theming/my_styles.dart';
import 'package:buy_vana/core/route_manager/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/auth_bloc.dart';

class SignUpBlocListener extends StatelessWidget {
  const SignUpBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.signUpRequestState == RequestState.loading) {
          isLoadingState(context);
        } else if (state.signUpRequestState == RequestState.loaded) {
          isLoadedState(context);
        } else if (state.signUpRequestState == RequestState.error) {
          isErrorState(context, state);
        }
      },
      child: SizedBox.shrink(),
    );
  }

  void isLoadingState(context) {
    showDialog(
      context: context,
      builder: (context) => Center(
        child: CircularProgressIndicator(color: ColorsManager.mainBlue),
      ),
    );
  }

  void isLoadedState(context) {
    Navigator.pop(context);
    Navigator.pushNamedAndRemoveUntil(context, Routes.homeScreen,(route) => false);
  }

  void isErrorState(context,state) {
    Navigator.pop(context);
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(Icons.error, color: Colors.red, size: 32),
        content: Text(state.failures?.message ?? "Something went wrong"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("OK",style: MyStyles.font18BlueMedium()),
          ),
        ],
      ),
    );
  }
}
