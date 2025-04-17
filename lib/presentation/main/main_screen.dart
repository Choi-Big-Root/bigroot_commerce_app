import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../pages/category/category_page.dart';
import '../pages/home/home_page.dart';
import '../pages/search/search_page.dart';
import '../pages/user/user_page.dart';
import 'component/top_app_bar/top_app_bar.dart';
import 'cubit/bottom_nav_cubit.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BottomNavCubit(),
      child: const MainScreenView(),
    );
  }
}

class MainScreenView extends StatelessWidget {
  const MainScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopAppBar(),
      body: BlocBuilder<BottomNavCubit, BottomNav>(
        builder:
            (_, state) => switch (state) {
              BottomNav.home => const HomePage(),
              BottomNav.category => const CategoryPage(),
              BottomNav.search => const SearchPage(),
              BottomNav.user => const UserPage(),
            },
      ),
      bottomNavigationBar: BlocBuilder<BottomNavCubit, BottomNav>(
        builder:
            (context, state) => BottomNavigationBar(
              items: List.generate(BottomNav.values.length, (index) {
                return BottomNavigationBarItem(
                  icon: BottomNav.values[index].icon,
                  label: BottomNav.values[index].label,
                  activeIcon: BottomNav.values[index].activeIcon,
                );
              }),
              onTap:
                  (index) => context.read<BottomNavCubit>().changeIndex(index),
              currentIndex: state.index,
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: false,
              showUnselectedLabels: false,
            ),
      ),
    );
  }
}
