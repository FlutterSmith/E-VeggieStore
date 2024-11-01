import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/helper/build_snack_bar.dart';
import 'package:fruits_hub/features/auth/presentation/manager/signup_cubit/signup_cubit.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/signup_view_body.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignupViewBodyBlocConsumer extends StatelessWidget {
  const SignupViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        if (state is SignupSuccess) {
          buildSnackBar(
            message: 'تم التسجيل بنجاح',
            context: context,
            backgroundColor: Colors.green,
            action: SnackBarAction(
              label: 'متابعة',
              textColor: Colors.white,
              onPressed: () => Navigator.pop(context),
            ),
            leadingIcon: const Icon(Icons.check_circle, color: Colors.white),
          );
        }
        if (state is SignupFailure) {
          buildSnackBar(context: context, message: state.message);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is SignupLoading ? true : false,
          child: const SignupViewBody(),
        );
      },
    );
  }
}
