import '../../exports.dart';
import 'notification_widget.dart';

AppBar buildCustomAppBar(BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  double offsetX = screenWidth * -0.05;
  double offsetY = screenWidth * 0.05;

  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    title: const Text(
      'الأكثر مبيعًا',
      style: TextStyles.bold19,
    ),
    leading: GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Transform.translate(
        offset: Offset(offsetX, 0),
        child: Container(
          width: 44,
          height: 44,
          decoration: const ShapeDecoration(
            color: Colors.white,
            shape: OvalBorder(
              side: BorderSide(
                width: 1,
                color: Color(0xFFF1F1F5),
              ),
            ),
          ),
          child: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
    ),
    actions: [
      Transform.translate(
          offset: Offset(offsetY, 0), child: const NotificationWidget())
    ],
  );
}
