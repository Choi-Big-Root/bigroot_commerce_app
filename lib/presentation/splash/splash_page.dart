import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../routes/route_path.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('splash')),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'splash_page',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                onPressed: () => context.push(RoutePath.home),
                child: const Text('go home'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
