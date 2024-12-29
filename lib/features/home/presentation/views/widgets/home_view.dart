import 'package:fruits_hub/core/widgets/fruit_item.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/featured_item.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/home_view_body.dart';

import '../../../../../constants.dart';
import '../../../../../core/widgets/search_text_field.dart';
import '../../../../../exports.dart';
import 'best_selling_grid_view.dart';
import 'best_selling_header.dart';
import 'custom_home_app_bar.dart';
import 'featured_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeViewBody();
  }
}

