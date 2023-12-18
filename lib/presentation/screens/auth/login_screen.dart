import 'package:flutter/material.dart';
import 'package:signin_signup_task/presentation/widgets/auth/sign_in/custom_signin_clippath.dart';

import 'package:signin_signup_task/presentation/widgets/auth/sign_in/signin_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          CustomSigninClippath(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: SigninForm(),
          ),
        ],
      ),
    );
  }
}
