import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Divider(
            color: Color(0xFFDCDEDE),
            thickness: 1,
          ),
        ),
        SizedBox(width: 20),
        Text(
          'أو',
          textAlign: TextAlign.center,
          style: TextStyles.semiBold16,
        ),
        SizedBox(width: 20),
        Expanded(
          child: Divider(
            color: Color(0xFFDCDEDE),
            thickness: 1,
          ),
        ),
      ],
    );
  }
}
