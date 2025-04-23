import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/custom/custom_font_weight.dart';
import '../../../../../core/theme/custom/custom_theme.dart';
import '../../../../../domain/model/display/menu/menu.model.dart';

class GlobalNavBar extends StatelessWidget {
  const GlobalNavBar({required this.menus, super.key});

  final List<Menu> menus;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return TabBar(
      splashFactory: NoSplash.splashFactory,
      overlayColor: WidgetStateProperty.all(Colors.transparent),
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(color: colorScheme.primary, width: 2.h),
      ),
      dividerColor: Colors.transparent,
      labelStyle: textTheme.titleSmall.semiBold?.copyWith(
        color: colorScheme.primary,
      ),
      labelPadding: EdgeInsets.symmetric(horizontal: 8.w),
      indicatorColor: colorScheme.primary,
      indicatorSize: TabBarIndicatorSize.label,

      unselectedLabelStyle: textTheme.titleSmall,
      unselectedLabelColor: colorScheme.contentSecondary,
      tabs: List.generate(menus.length, (index) => Text(menus[index].title)),
    );
  }
}
