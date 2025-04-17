import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theme/constant/app_icons.dart';
import '../../../../core/theme/custom/custom_app_bar.dart';
import '../../../../core/theme/custom/custom_font_weight.dart';
import '../../cubit/mall_type_cubit.dart';
import 'widget/svg_icon_button.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MallTypeCubit, MallType>(
      builder: (_, state) {
        return AnimatedContainer(
          padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 8.w),
          color: state.theme.backgroundColor,
          child: AppBar(
            leading: SvgIconButton(
              icon: AppIcons.mainLogo,
              color: state.theme.logoColor,
              paddingV: 8.h,
              paddingH: 8.w,
            ),
            title: AnimatedContainer(
              decoration: BoxDecoration(
                color: state.theme.containerColor,
                borderRadius: BorderRadius.circular(
                  CustomAppBarTheme.containCuicularRadius,
                ),
              ),
              child: SizedBox(
                height: 28.h,
                child: DefaultTabController(
                  length: MallType.values.length,
                  initialIndex: state.index,
                  child: TabBar(
                    tabs: List.generate(MallType.values.length, (index) {
                      return Tab(text: MallType.values[index].toName);
                    }),
                    isScrollable: false,
                    indicator: BoxDecoration(
                      color: state.theme.indicatorColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          CustomAppBarTheme.containCuicularRadius,
                        ),
                      ),
                    ),
                    indicatorSize: TabBarIndicatorSize.tab,
                    dividerColor: Colors.transparent,
                    labelColor: state.theme.labelColor,
                    labelStyle: Theme.of(context).textTheme.labelLarge
                        ?.copyWith(fontWeight: CustomFontWeight.bold),
                    labelPadding: EdgeInsets.symmetric(horizontal: 12.w),
                    unselectedLabelColor: state.theme.unselectedLabelColor,
                    unselectedLabelStyle: Theme.of(context).textTheme.labelLarge
                        ?.copyWith(fontWeight: CustomFontWeight.regular),
                    onTap:
                        (index) =>
                            context.read<MallTypeCubit>().changeIndex(index),
                    splashBorderRadius: BorderRadius.all(
                      Radius.circular(CustomAppBarTheme.containCuicularRadius),
                    ),
                  ),
                ),
              ),
              duration: Duration(
                milliseconds: CustomAppBarTheme.animationDuration,
              ),
            ),
            actions: [
              SvgIconButton(
                icon: AppIcons.location,
                color: state.theme.iconColor,
              ),
              SizedBox(width: 8.w),
              SvgIconButton(icon: AppIcons.cart, color: state.theme.iconColor),
            ],
            backgroundColor: Colors.transparent,
            centerTitle: true,
            leadingWidth: 86.w,
          ),
          duration: Duration(milliseconds: CustomAppBarTheme.animationDuration),
        );
      },
    );
  }
}
