import 'package:flutter/material.dart';
import 'package:signin_signup_task/core/constants/colors.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          color: AppColor.kWhite, fontWeight: FontWeight.bold, fontSize: 40),
    );
  }
}
