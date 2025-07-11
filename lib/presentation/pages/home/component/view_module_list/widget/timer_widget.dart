import 'dart:async';

import 'package:flutter/material.dart';

import '../../../../../../core/theme/custom/custom_font_weight.dart';
import '../../../../../../core/theme/custom/custom_theme.dart';

class TimerWidget extends StatefulWidget {
  const TimerWidget({required this.endTime, super.key});

  final DateTime endTime;

  @override
  State<TimerWidget> createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  Timer? _timer;
  late Duration remainTime;

  @override
  void initState() {
    super.initState();
    remainTime = widget.endTime.difference(DateTime.now());
    if (remainTime > Duration.zero) {
      _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        remainTime = widget.endTime.difference(DateTime.now());
        if (remainTime <= Duration.zero) {
          _timer?.cancel();
        }
        setState(() {});
      });
    }
  }

  String _printDuration(Duration duration) {
    if (duration <= Duration.zero) {
      return 'TIME_OUT';
    }
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    final twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return '${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds';
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _printDuration(remainTime),
      style:
          Theme.of(context).textTheme.headlineMedium
              ?.copyWith(color: Theme.of(context).colorScheme.contentPrimary)
              .semiBold,
    );
  }
}
