import 'package:svg_flutter/svg_flutter.dart';

import '../../../../../exports.dart';

class ActiveItem extends StatelessWidget {
  const ActiveItem({super.key, required this.image, required this.text});

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedContainer(
        padding: const EdgeInsets.only(
          left: 16,
        ),
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
        decoration: ShapeDecoration(
          color: const Color(0xFFEEEEEE),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 30,
              height: 30,
              decoration: ShapeDecoration(
                color: const Color(0xFF1B5E37),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Center(child: SvgPicture.asset(image)),
            ),
            const SizedBox(width: 4),
            AnimatedOpacity(
              opacity: 1.0,
              duration: const Duration(milliseconds: 300),
              child: Text(
                text,
                style: TextStyles.semiBold11.copyWith(
                  color: const Color(0xFF1B5E37),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
