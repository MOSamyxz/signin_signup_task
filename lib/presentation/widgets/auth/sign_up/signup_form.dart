import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/functions/navigation.dart';
import '../custom_signin_signup_button_with_text.dart';
import '../custom_text_button.dart';
import '../custom_text_form_field.dart';
import '../custom_title.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({
    super.key,
  });

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  var formkey = GlobalKey<FormState>();
  late TextEditingController name;
  late TextEditingController email;
  late TextEditingController password;

  @override
  void initState() {
    name = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    name.dispose();
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
              height: 30,
            ),
            IconButton(
                onPressed: () {
                  navigateBack(context);
                },
                color: AppColor.kWhite,
                icon: const Icon(Icons.arrow_back_ios)),
            const SizedBox(
              height: 50,
            ),
            const CustomTitle(
              text: 'Create\nAccount',
            ),
            const SizedBox(
              height: 110,
            ),
            CustomeTextFormField(
              hintText: 'Name',
              controller: name,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Name must not be empty !';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 16,
            ),
            CustomeTextFormField(
              hintText: 'Your Email',
              controller: email,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Email must not be empty !';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 16,
            ),
            CustomeTextFormField(
              hintText: 'Your Password',
              controller: password,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Password must not be empty !';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 30,
            ),
            CustomSigninSignupButtonWithText(
              formkey: formkey,
              onTap: () {
                if (formkey.currentState!.validate()) {
                  navigateBack(context);
                }
              },
              text: 'Sign up',
            ),
            const SizedBox(
              height: 100,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Align(
                alignment: Alignment.centerRight,
                child: CustomTextButton(
                  color: AppColor.kPrimaryColor,
                  text: 'Sign in',
                  width: 70,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
