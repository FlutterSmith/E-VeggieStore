import 'package:fruits_hub/exports.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static const routeName = 'loginView';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigninCubit(
        getIt.get<AuthRepo>(),
      ),
      child: Scaffold(
        appBar: buildAppBar(
          context,
          title: 'تسجيل دخول',
        ),
        body: const LoginViewBodyBlocConsumer(),
      ),
    );
  }
}
