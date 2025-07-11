import 'package:flutter/material.dart';

import 'factory/view_module_widget.dart';

class ViewModuleD extends StatelessWidget with ViewModuleWidget {
  const ViewModuleD({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      height: 200,
      child: const Center(child: Text('ViewModuleD')),
    );
  }
}
