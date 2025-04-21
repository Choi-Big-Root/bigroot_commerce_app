import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/theme/theme_data.dart';
import 'core/utils/exception/common_exception.dart';
import 'core/utils/logger.dart';
import 'data/data_source/mock/display/display_mock_api.dart';
import 'presentation/routes/routes.dart';
import 'service_locator.dart';

void main() async {
  setLocator();
  try {
    final data = await DisplayMockApi().getMenusByMallType('market');
    CustomLogger.logger.d(data);
  } catch (error) {
    final errorData = CommonException.setError(error);
    CustomLogger.logger.e(errorData);
  }

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
