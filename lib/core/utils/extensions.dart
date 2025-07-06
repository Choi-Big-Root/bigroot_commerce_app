import 'package:intl/intl.dart';

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