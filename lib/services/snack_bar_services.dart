import 'package:flutter/material.dart';

class SnackbarService {
  static void show({
    required BuildContext context,
    required String text,
    Duration? duration,
    SnackBarAction? action,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        action: action,
        content: Text(
          text,
          textAlign: TextAlign.center,
        ),
        duration: duration ?? const Duration(seconds: 3),
      ),
    );
  }

  static void showLong(BuildContext context, String text) {
    show(
      duration: const Duration(seconds: 5),
      context: context,
      text: text,
    );
  }

  static void showWithAction(BuildContext context, String text,
      String actionLabel, VoidCallback onPressed) {
    show(
      context: context,
      text: text,
      action: SnackBarAction(
        label: actionLabel,
        onPressed: onPressed,
      ),
    );
  }
}
