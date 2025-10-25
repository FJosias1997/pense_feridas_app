import 'package:flutter/material.dart';
import 'package:pense_feridas_app/extensions/context_extensions.dart';

class InfoListtileWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  const InfoListtileWidget({
    required this.title,
    required this.subtitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title, style: context.theme.textTheme.bodyMedium?.copyWith()),
      subtitle: Text(
        subtitle,
        style: context.theme.textTheme.titleLarge?.copyWith(),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
