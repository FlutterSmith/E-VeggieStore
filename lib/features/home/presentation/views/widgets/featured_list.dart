import 'package:fruits_hub/features/home/presentation/views/widgets/featured_item.dart';

import '../../../../../exports.dart';

class FeaturedList extends StatelessWidget {
  const FeaturedList({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
          children: List.generate(4, (index) {
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: FeaturedItem(),
        );
      })),
    );
  }
}
