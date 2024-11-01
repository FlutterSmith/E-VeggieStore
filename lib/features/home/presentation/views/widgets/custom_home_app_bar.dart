import 'package:fruits_hub/core/helper/get_user.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../../../../core/widgets/notification_widget.dart';
import '../../../../../exports.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: const NotificationWidget(),
      leading: Image.asset(
        Assets.assetsImagesProfileImage,
        width: 40,
        height: 40,
      ),
      title: Text(
        'صباح الخير !..',
        textAlign: TextAlign.right,
        style: TextStyles.regular16.copyWith(
          color: const Color(0xFF949D9E),
        ),
      ),
      subtitle: Text(getUser().name,
          textAlign: TextAlign.right,
          style: TextStyles.bold16.copyWith(
            color: const Color(0xFF0C0D0D),
          )),
    );
  }
}
