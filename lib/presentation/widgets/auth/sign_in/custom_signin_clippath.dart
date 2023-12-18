import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';
import '../custom_clip_path.dart';

class CustomSigninClippath extends StatelessWidget {
  const CustomSigninClippath({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: CustomClipPathThree(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.45,
            color: AppColor.klightBlue,
          ),
        ),
        ClipPath(
          clipper: CustomClipPathTwo(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.35,
            color: AppColor.kPrimaryColor.withOpacity(0.9),
          ),
        ),
        ClipPath(
          clipper: CustomClipPathOne(),
          child: Container(
            width: MediaQuery.of(context).size.width * .55,
            height: MediaQuery.of(context).size.height * 0.13,
            color: AppColor.klightBlue,
          ),
        ),
      ],
    );
  }
}
