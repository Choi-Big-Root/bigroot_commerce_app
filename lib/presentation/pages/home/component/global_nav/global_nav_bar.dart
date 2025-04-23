import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/custom/custom_font_weight.dart';
import '../../../../../core/theme/custom/custom_theme.dart';
import '../../../../../core/utils/constant.dart';
import '../../../../../domain/model/display/menu/menu.model.dart';
import '../../bloc/menu_bloc/menu_bloc.dart';

class GlobalNavBar extends StatelessWidget {
  const GlobalNavBar({required this.menus, super.key});

  final List<Menu> menus;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return BlocBuilder<MenuBloc, MenuState>(
      builder: (context, state) {
        return Stack(
          children: [
            SizedBox(
              height: 46.h,
              child: TabBar(
                splashFactory: NoSplash.splashFactory,
                overlayColor: WidgetStateProperty.all(Colors.transparent),
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(
                    color: colorScheme.primary,
                    width: 2.h,
                  ),
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
                tabs: List.generate(
                  menus.length,
                  (index) => Text(menus[index].title),
                ),
              ),
            ),
            if (state.status == Status.loading)
              Positioned.fill(
                child: ColoredBox(
                  color: Colors.black.withAlpha((0.2 * 255).round()),
                  child: Center(
                    child: Transform.scale(
                      scale: 0.5,
                      child: const CircularProgressIndicator(),
                    ),
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
