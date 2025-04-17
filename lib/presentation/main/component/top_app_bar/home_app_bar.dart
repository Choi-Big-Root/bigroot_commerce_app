import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theme/constant/app_icons.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 8.w),
      color: Theme.of(context).colorScheme.primary,
      child: AppBar(
        leading: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
          child: SvgPicture.asset(AppIcons.mainLogo),
        ),
        title: Text(
          'tabBar',
          style: TextStyle(
            color: Theme.of(context).colorScheme.background,
            fontWeight: FontWeight.bold,
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
    );
  }
}
