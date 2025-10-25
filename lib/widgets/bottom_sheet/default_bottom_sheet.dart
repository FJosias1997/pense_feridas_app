import 'package:flutter/material.dart';

class DefaultBottomSheet {
  static Future<void> defaultBottomSheet(
    BuildContext context,
    Widget widget,
  ) async {
    await showModalBottomSheet(
      context: context,
      builder: (context) {
        return FractionallySizedBox(
          heightFactor: 0.7,
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
              child: widget,
            ),
          ),
        );
      },
    );
  }
}
