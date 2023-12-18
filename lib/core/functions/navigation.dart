import 'package:flutter/material.dart';

void navigateTO(Widget widget, {required BuildContext context}) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => widget,
    ),
  );
}

void navigateAndReplace({required BuildContext context}) {
  Navigator.of(context).pop(true);
}

void navigateBack(BuildContext context) {
  Navigator.pop(context);
}
