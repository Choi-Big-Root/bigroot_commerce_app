import 'package:flutter/material.dart';

import 'factory/view_module_widget.dart';

class ViewModuleA extends StatelessWidget with ViewModuleWidget {
  const ViewModuleA({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepOrange,
      height: 200,
      child: const Center(child: Text('ViewModuleA')),
    );
  }
}
