import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';
import '../custom_clip_path.dart';

class CustomSignupClippath extends StatelessWidget {
  const CustomSignupClippath({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: CustomClipPathFour(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.35,
            color: AppColor.kPrimaryColor,
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: ClipPath(
            clipper: CustomClipPathFive(),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.3,
              color: AppColor.klightBlue,
            ),
          ),
        ),
      ],
    );
  }
}
