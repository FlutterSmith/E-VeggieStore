import 'package:svg_flutter/svg_flutter.dart';

import '../../../../../exports.dart';

class InActiveItem extends StatelessWidget {
  const InActiveItem({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: 0.6,
      duration: const Duration(milliseconds: 300),
      child: SvgPicture.asset(image),
    );
  }
}
