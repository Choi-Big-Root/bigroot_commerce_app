import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/theme/theme_data.dart';
import 'dependency_injection.dart';
import 'presentation/routes/routes.dart';

void main() async {
  configureDependencies();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder:
          (context, child) => MaterialApp.router(
            routerConfig: router,
            theme: CustomThemeData.themeData,
            debugShowCheckedModeBanner: false,
          ),
      designSize: const Size(375, 812),
    );
  }
}
