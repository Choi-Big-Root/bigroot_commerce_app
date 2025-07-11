import 'package:flutter/material.dart';

import '../../../../../../core/theme/custom/custom_font_weight.dart';
import '../../../../../../core/theme/custom/custom_theme.dart';

class ViewModuleTitle extends StatelessWidget {
  const ViewModuleTitle({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, bottom: 8),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge.semiBold?.copyWith(
          color: Theme.of(context).colorScheme.contentPrimary,
        ),
      ),
    );
  }
}
