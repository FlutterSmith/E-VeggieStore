import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/helper/build_snack_bar.dart';
import 'package:fruits_hub/features/auth/presentation/manager/signin_cubit/signin_cubit.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/login_view_body.dart';
import 'package:fruits_hub/features/home/presentation/views/main_view.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginViewBodyBlocConsumer extends StatelessWidget {
  const LoginViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninCubit, SigninState>(
      listener: (context, state) {
        if (state is SigninSuccess) {
          buildSnackBar(
            context: context,
            message: 'تم تسجيل الدخول بنجاح',
            backgroundColor: Colors.green,
          );

          Navigator.pushReplacementNamed(context, MainView.routeName);
        }
        if (state is SigninFailure) {
          buildSnackBar(context: context, message: state.message);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
            inAsyncCall: state is SigninLoading ? true : false,
            child: const LoginViewBody());
      },
    );
  }
}
