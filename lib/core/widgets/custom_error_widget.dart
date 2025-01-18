//Custom error widget to display error messages
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  final String error;

  const CustomErrorWidget({
    super.key,
    required this.error,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        error,
        style: const TextStyle(
          color: Colors.red,
          fontSize: 16,
        ),
      ),
    );
  }
}
