import 'package:flutter/material.dart';

class ViewModuleA extends StatelessWidget {
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
