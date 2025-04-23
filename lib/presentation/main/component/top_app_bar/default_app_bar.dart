import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/custom/custom_font_weight.dart';
import '../../../../core/theme/custom/custom_theme.dart';
import '../../../../core/utils/constant.dart';
import '../../cubit/mall_type_cubit.dart';

class DefaultAppBar extends StatelessWidget {
  const DefaultAppBar({required this.label, super.key});
  final String label;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MallTypeCubit, MallType>(
      builder: (_, state) {
        return Container(
          padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 8.w),
          color:
              (state.isMarket)
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.onPrimary,
          child: AppBar(
            title: Text(
              label,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color:
                    (state.isMarket)
                        ? Theme.of(context).colorScheme.onPrimary
                        : Theme.of(context).colorScheme.contentPrimary,
                fontWeight: CustomFontWeight.semiBold,
              ),
            ),
            backgroundColor: Colors.transparent,
            centerTitle: true,
          ),
        );
      },
    );
  }
}
