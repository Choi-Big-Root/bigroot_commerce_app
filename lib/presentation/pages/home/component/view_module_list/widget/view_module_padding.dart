import 'package:flutter/material.dart';

import '../../../../../../core/utils/constant.dart';

class ViewModulePadding extends StatelessWidget {
  const ViewModulePadding({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: Constants.horizontalPadding, child: child);
  }
}
