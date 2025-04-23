import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../error/error_response.dart';

class CommonDialog {
  CommonDialog();

  static Future<bool?> errorDialog(BuildContext context, ErrorResponse error) {
    return showDialog<bool>(
      context: context,
      builder: (_) {
        return AlertDialog(
          content: SizedBox(
            height: 70.h,
            child: Column(
              children: [Text('${error.message}'), Text('[${error.code}]')],
            ),
          ),
          actionsAlignment: MainAxisAlignment.center,
          actions: [
            ElevatedButton(
              onPressed: () => context.pop(true),
              child: const Text('다시 시도'),
            ),
            ElevatedButton(onPressed: () => exit(0), child: const Text('종료')),
          ],
        );
      },
    );
  }
}
