import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../theme/custom/custom_font_weight.dart';
import '../theme/custom/custom_theme.dart';
import 'constant.dart';

extension StatusX on Status {
  bool get isInitial => this == Status.initial;
  bool get isLoading => this == Status.loading;
  bool get isSuccess => this == Status.success;
  bool get isError => this == Status.error;
}

extension StringX on String {
  String toSnakeCase() {
    final exp = RegExp('(?<=[a-z0-9])[A-Z]');
    return replaceAllMapped(exp, (Match m) => '_${m.group(0)}').toLowerCase();
  }
}

extension IntX on int{
 String toWon() {
   final pricwFormat = NumberFormat('###,###,###,###원');
   return pricwFormat.format(this);
 }

 String toReview() {
   return this > 9999 ? '9999 +' : toString();
 }
}

extension TextStyleEx on TextStyle {
  TextStyle? titleCopyWith(){
    return copyWith(
      color: CustomTheme.colorScheme.contentPrimary,
    ).bold;
  }
  TextStyle? discountRateCopyWith(){
    return copyWith(
      color: CustomTheme.colorScheme.secondary,
    ).bold;
  }
  TextStyle? priceCopyWith(){
    return copyWith(
      color: CustomTheme.colorScheme.contentPrimary,
    ).bold;
  }
  TextStyle? originalCopyWith(){
    return copyWith(
      color: CustomTheme.colorScheme.contentFourth,
      decoration: TextDecoration.lineThrough,
    ).regular;
  }
  TextStyle? reviewCountCopyWith(){
    return copyWith(
      color: CustomTheme.colorScheme.contentTertiary
    ).regular;
  }
}