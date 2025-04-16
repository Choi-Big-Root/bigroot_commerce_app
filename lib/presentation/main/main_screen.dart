import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/theme/constant/app_icons.dart';
import '../pages/category/category_page.dart';
import '../pages/home/home_page.dart';
import '../pages/search/search_page.dart';
import '../pages/user/user_page.dart';
import 'cubit/bottom_nav_cubit.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BottomNaveCubit(),
      child: const MainScreenView(),
    );
  }
}

class MainScreenView extends StatelessWidget {
  const MainScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(44.h),
        child: Container(
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
        ),
      ),
      body: BlocBuilder<BottomNaveCubit, BottomNav>(
        builder:
            (_, state) => switch (state) {
              BottomNav.home => const HomePage(),
              BottomNav.category => const CategoryPage(),
              BottomNav.search => const SearchPage(),
              BottomNav.user => const UserPage(),
            },
      ),
      bottomNavigationBar: BlocBuilder<BottomNaveCubit, BottomNav>(
        builder:
            (context, state) => BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(AppIcons.navHome),
                  label: 'home',
                  activeIcon: SvgPicture.asset(AppIcons.navHomeOn),
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(AppIcons.navCategory),
                  label: 'category',
                  activeIcon: SvgPicture.asset(AppIcons.navCategoryOn),
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(AppIcons.navSearch),
                  label: 'search',
                  activeIcon: SvgPicture.asset(AppIcons.navSearchOn),
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(AppIcons.navUser),
                  label: 'user',
                  activeIcon: SvgPicture.asset(AppIcons.navUserOn),
                ),
              ],
              onTap:
                  (index) => context.read<BottomNaveCubit>().changeIndex(index),
              currentIndex: state.index,
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: false,
              showUnselectedLabels: false,
            ),
      ),
    );
  }
}
