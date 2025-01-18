import 'package:fruits_hub/core/widgets/fruit_item.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/featured_item.dart';

import '../../../../../constants.dart';
import '../../../../../core/widgets/search_text_field.dart';
import '../../../../../exports.dart';
import 'best_selling_grid_view.dart';
import 'best_selling_header.dart';
import 'custom_home_app_bar.dart';
import 'featured_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                CustomHomeAppBar(),
                SizedBox(height: kTopPadding),
                SearchTextField(
                  hintText: 'ابحث عن.......',
                ),
                SizedBox(height: 12),
                FeaturedList(),
                SizedBox(height: 12),
                BestSellingHeader(),
                SizedBox(height: 12),
              ],
            ),
          ),
          BestSellingGridView(),
        ],
      ),
    );
  }
}
