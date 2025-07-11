import 'package:flutter/material.dart';

import 'factory/view_module_widget.dart';

class ViewModuleNone extends StatelessWidget with ViewModuleWidget {
  const ViewModuleNone({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
      height: 200,
      child: const Center(child: Text('ViewModuleNone')),
    );
  }
}
