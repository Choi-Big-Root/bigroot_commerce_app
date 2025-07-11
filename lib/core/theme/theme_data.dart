import 'package:flutter/material.dart';

import 'constant/app_colors.dart';
import 'custom/custom_font_weight.dart';
import 'custom/custom_theme.dart';

class CustomThemeData {
  static ThemeData get themeData => ThemeData(
    useMaterial3: true,
    colorScheme: CustomTheme.colorScheme,
    fontFamily: 'Pretendard',
    textTheme: CustomTheme.textTheme,
    dividerTheme: const DividerThemeData(color: AppColors.outline),
    tabBarTheme: TabBarThemeData(
      indicator: const UnderlineTabIndicator(
        borderSide: BorderSide(color: AppColors.primary, width: 2),
      ),
      indicatorSize: TabBarIndicatorSize.tab,
      labelColor: CustomTheme.colorScheme.primary,
      labelStyle: CustomTheme.textTheme.titleSmall.semiBold,
      unselectedLabelColor: CustomTheme.colorScheme.contentTertiary,
      unselectedLabelStyle: CustomTheme.textTheme.titleSmall,
      overlayColor: WidgetStateProperty.all(
          Colors.grey[300] ?? Colors.grey
      ),
    ),
  );
}
