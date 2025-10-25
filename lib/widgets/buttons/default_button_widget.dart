import 'package:flutter/material.dart';
import 'package:pense_feridas_app/extensions/context_extensions.dart';

class DefaultButtonWidget extends StatelessWidget {
  final String title;
  final Function() onTap;
  const DefaultButtonWidget({
    required this.title,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(
        title,
        style: context.theme.textTheme.titleLarge?.copyWith(
          fontWeight: FontWeight.bold,
          color: context.theme.colorScheme.onPrimary,
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: context.theme.colorScheme.primary,

        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        textStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: context.theme.colorScheme.onPrimary,
        ),
      ),
    );
  }
}
