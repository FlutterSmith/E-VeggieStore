import 'package:fruits_hub/core/widgets/build_custom_app_bar.dart';
import 'package:fruits_hub/core/widgets/notification_widget.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../../../exports.dart';
import 'widgets/best_selling_view_body.dart';

class BestSellingView extends StatelessWidget {
  const BestSellingView({super.key});
  static const String routeName = 'best_selling_view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(context),
      body: const BestSellingViewBody(),
    );
  }
}
