import 'package:flutter/material.dart';

void buildSnackBar({
  required BuildContext context,
  required String message,
  SnackBarAction? action,
  Color backgroundColor = Colors.redAccent,
  Duration duration = const Duration(seconds: 3),
  TextStyle textStyle = const TextStyle(color: Colors.white),
  Icon? leadingIcon,
  Color actionTextColor = Colors.yellow, // Default action text color
  FontWeight actionFontWeight = FontWeight.bold, // To emphasize the button
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: backgroundColor,
      duration: duration,
      content: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (leadingIcon != null) ...[
            leadingIcon,
            const SizedBox(width: 8),
          ],
          Expanded(
            child: Text(
              message,
              style: textStyle,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
      action: action != null
          ? SnackBarAction(
              label: action.label,
              onPressed: action.onPressed,
              textColor: actionTextColor, 
              disabledTextColor: Colors.grey[300],
            )
          : null,
    ),
  );
}
