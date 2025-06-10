import 'package:flutter/material.dart';

class ViewModuleC extends StatelessWidget {
  const ViewModuleC({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      height: 200,
      child: const Center(child: Text('ViewModuleC')),
    );
  }
}
