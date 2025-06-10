import 'package:flutter/material.dart';

class ViewModuleNone extends StatelessWidget {
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
