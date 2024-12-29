import '../../../../core/widgets/custom_bottom_navigation_bar.dart';
import '../../../../exports.dart';
import 'widgets/home_view.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});
  static const String routeName = 'home_view';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: HomeView(),
    );
  }
}
