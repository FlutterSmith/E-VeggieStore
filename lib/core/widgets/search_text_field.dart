import 'package:svg_flutter/svg_flutter.dart';

import '../../constants.dart';
import '../../exports.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key, required this.hintText});

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kTopPadding),
      child: Container(
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          shadows: const [
            BoxShadow(
              color: Color(0x0A000000),
              blurRadius: 9,
              offset: Offset(0, 2),
              spreadRadius: 0,
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              prefixIcon: SizedBox(
                width: 20,
                child: Center(
                  child: SvgPicture.asset(Assets.assetsImagesSearchNormal),
                ),
              ),
              hintText: hintText,
              hintStyle: TextStyles.regular16.copyWith(
                color: const Color(0xFF949D9E),
              ),
              contentPadding: const EdgeInsets.symmetric(
                  horizontal: kTopPadding, vertical: 18),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: const BorderSide(
                  color: Colors.white,
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: const BorderSide(
                  color: Color(0xFFE6E9E9),
                  width: 1,
                ),
              ),
              suffixIcon: SizedBox(
                width: 20,
                child: Center(
                  child: SvgPicture.asset(
                    Assets.assetsImagesSetting,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
