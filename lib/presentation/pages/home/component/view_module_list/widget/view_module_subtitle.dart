import 'package:flutter/material.dart';

import '../../../../../../core/theme/custom/custom_theme.dart';

class ViewModuleSubtitle extends StatelessWidget {
  const ViewModuleSubtitle({required this.subTitle,super.key});
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        subTitle,
        style: Theme.of(context).textTheme.titleSmall?.copyWith(
          color: Theme.of(context).colorScheme.contentTertiary,
        ),
      ),
    );
  }
}
