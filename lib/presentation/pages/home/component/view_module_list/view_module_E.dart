import 'package:flutter/material.dart';

import 'factory/view_module_widget.dart';

class ViewModuleE extends StatelessWidget with ViewModuleWidget {
  const ViewModuleE({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepOrangeAccent,
      height: 200,
      child: const Center(child: Text('ViewModuleE')),
    );
  }
}
