import 'package:flutter/material.dart';
import 'package:signin_signup_task/core/constants/colors.dart';

class CustomeTextFormField extends StatelessWidget {
  const CustomeTextFormField({
    super.key,
    required this.hintText,
    required this.validator,
    required this.controller,
    this.suffix,
    this.suffixPressed,
    this.isPassword = false,
  });
  final bool isPassword;
  final IconData? suffix;
  final void Function()? suffixPressed;
  final String hintText;
  final String? Function(String?)? validator;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: isPassword,
        controller: controller,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: suffixPressed,
            icon: Icon(
              suffix,
            ),
          ),
          fillColor: AppColor.kWhite,
          filled: true,
          hintText: hintText,
          hintStyle: const TextStyle(color: AppColor.kBlack),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
              borderSide: BorderSide.none),
        ),
        validator: validator);
  }
}
