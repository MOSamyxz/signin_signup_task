import 'package:flutter/material.dart';

class CustomSigninSignupButtonWithText extends StatelessWidget {
  const CustomSigninSignupButtonWithText({
    super.key,
    required this.formkey,
    required this.text,
    this.onTap,
  });

  final GlobalKey<FormState> formkey;
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        GestureDetector(
          onTap: onTap,
          child: const CircleAvatar(
            radius: 30,
            child: Icon(Icons.arrow_right_alt),
          ),
        )
      ],
    );
  }
}
