import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theme/constant/app_icons.dart';
import '../../../../core/theme/custom/custom_font_weight.dart';
import '../../../../core/theme/custom/custom_theme.dart';
import '../../cubit/mall_type_cubit.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MallTypeCubit, MallType>(
      builder: (_, state) {
        return AnimatedContainer(
          padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 8.w),
          color:
              (state.isMarket)
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.onPrimary,
          child: AppBar(
            leading: Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
              child: SvgPicture.asset(
                AppIcons.mainLogo,
                colorFilter: ColorFilter.mode(
                  (state.isMarket)
                      ? Theme.of(context).colorScheme.onPrimary
                      : Theme.of(context).colorScheme.primary,
                  BlendMode.srcIn,
                ),
              ),
            ),
            title: AnimatedContainer(
              decoration: BoxDecoration(
                color:
                    (state.isMarket)
                        ? Theme.of(context).colorScheme.primaryContainer
                        : Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(20.h),
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
                      color:
                          (state.isMarket)
                              ? Theme.of(context).colorScheme.onPrimary
                              : Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.all(Radius.circular(30.h)),
                    ),
                    indicatorSize: TabBarIndicatorSize.tab,
                    dividerColor: Colors.transparent,
                    labelColor:
                        (state.isMarket)
                            ? Theme.of(context).colorScheme.primary
                            : Theme.of(context).colorScheme.onPrimary,
                    labelStyle: Theme.of(context).textTheme.labelLarge
                        ?.copyWith(fontWeight: CustomFontWeight.bold),
                    labelPadding: EdgeInsets.symmetric(horizontal: 12.w),
                    unselectedLabelColor:
                        (state.isMarket)
                            ? Theme.of(context).colorScheme.onPrimary
                            : Theme.of(context).colorScheme.contentPrimary,
                    unselectedLabelStyle: Theme.of(context).textTheme.labelLarge
                        ?.copyWith(fontWeight: CustomFontWeight.regular),
                    onTap:
                        (index) =>
                            context.read<MallTypeCubit>().changeIndex(index),
                    splashBorderRadius: const BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                ),
              ),
              duration: const Duration(milliseconds: 400),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 4.w),
                child: SvgPicture.asset(
                  AppIcons.location,
                  colorFilter: ColorFilter.mode(
                    (state.isMarket)
                        ? Theme.of(context).colorScheme.onPrimary
                        : Theme.of(context).colorScheme.contentPrimary,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              SizedBox(width: 8.w),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 4.w),
                child: SvgPicture.asset(
                  AppIcons.cart,
                  colorFilter: ColorFilter.mode(
                    (state.isMarket)
                        ? Theme.of(context).colorScheme.onPrimary
                        : Theme.of(context).colorScheme.contentPrimary,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ],
            backgroundColor: Colors.transparent,
            centerTitle: true,
            leadingWidth: 86.w,
          ),
          duration: const Duration(milliseconds: 400),
        );
      },
    );
  }
}
