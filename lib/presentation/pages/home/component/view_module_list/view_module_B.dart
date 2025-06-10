import 'package:flutter/material.dart';

class ViewModuleB extends StatelessWidget {
  const ViewModuleB({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: 200,
      child: const Center(child: Text('ViewModuleB')),
    );
  }
}
