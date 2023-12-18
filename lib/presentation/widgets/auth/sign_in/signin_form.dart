import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/functions/navigation.dart';
import '../../../screens/auth/signup_screen.dart';
import '../../../screens/home_screen.dart';
import '../custom_signin_signup_button_with_text.dart';
import '../custom_text_button.dart';
import '../custom_text_form_field.dart';
import '../custom_title.dart';

class SigninForm extends StatefulWidget {
  const SigninForm({super.key});

  @override
  State<SigninForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<SigninForm> {
  var formkey = GlobalKey<FormState>();

  final String testEmail = "moo@gmail.com";

  final String testPassword = "123456";

  late TextEditingController email;

  late TextEditingController password;

  bool isObsecure = true;
  @override
  void initState() {
    email = TextEditingController();
    password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 100,
            ),
            const CustomTitle(
              text: 'Welcome\nBack',
            ),
            const SizedBox(
              height: 150,
            ),
            CustomeTextFormField(
              hintText: 'Your Email',
              controller: email,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Email must not be empty !';
                } else if (value != testEmail) {
                  return "Wrong Email";
                }
                return null;
              },
            ),
            const SizedBox(
              height: 16,
            ),
            CustomeTextFormField(
              isPassword: isObsecure,
              suffix: isObsecure ? Icons.visibility_off : Icons.visibility,
              suffixPressed: () {
                setState(() {
                  isObsecure = !isObsecure;
                });
              },
              hintText: 'Your Password',
              controller: password,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Password must not be empty !';
                } else if (email.text == testEmail && value != testPassword) {
                  return "Wrong Password";
                }
                return null;
              },
            ),
            const SizedBox(
              height: 40,
            ),
            CustomSigninSignupButtonWithText(
              formkey: formkey,
              onTap: () {
                if (formkey.currentState!.validate()) {
                  navigateTO(const HomeScreen(), context: context);
                }
              },
              text: 'Sign in',
            ),
            const SizedBox(
              height: 140,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    navigateTO(const SignupScreen(), context: context);
                  },
                  child: const CustomTextButton(
                    color: AppColor.kPrimaryColor,
                    text: 'Sign up',
                    width: 70,
                  ),
                ),
                const Spacer(),
                const CustomTextButton(
                  color: AppColor.kRed,
                  text: 'Forget password',
                  width: 130,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
