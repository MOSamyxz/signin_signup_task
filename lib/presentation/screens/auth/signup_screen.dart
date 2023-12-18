import 'package:flutter/material.dart';
import 'package:signin_signup_task/presentation/widgets/auth/sign_up/custom_signup_clippath.dart';

import 'package:signin_signup_task/presentation/widgets/auth/sign_up/signup_form.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          CustomSignupClippath(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: SignupForm(),
          ),
        ],
      ),
    );
  }
}
