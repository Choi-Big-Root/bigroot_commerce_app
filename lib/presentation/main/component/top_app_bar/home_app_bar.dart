import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theme/constant/app_icons.dart';
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
                  : Theme.of(context).colorScheme.background,
          child: AppBar(
            leading: Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
              child: SvgPicture.asset(AppIcons.mainLogo),
            ),
            title: DefaultTabController(
              length: MallType.values.length,
              initialIndex: state.index,
              child: TabBar(
                tabs: List.generate(MallType.values.length, (index) {
                  return Tab(text: MallType.values[index].toName);
                }),
                labelColor: Colors.black,
                unselectedLabelColor: Colors.black,
                onTap:
                    (index) => context.read<MallTypeCubit>().changeIndex(index),
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 4.w),
                child: SvgPicture.asset(
                  AppIcons.location,
                  colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.background,
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
                    Theme.of(context).colorScheme.background,
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
