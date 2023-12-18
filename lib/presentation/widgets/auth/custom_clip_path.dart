import 'package:flutter/material.dart';

class CustomClipPathOne extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double h = size.height;
    double w = size.width;

    Path path = Path();
    path.lineTo(w, 0);
    path.quadraticBezierTo(w * 0.66, h, 0, h * .8);
    path.lineTo(0, h);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class CustomClipPathTwo extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double h = size.height;
    double w = size.width;
    Path path = Path();

    path.lineTo(w, 0);
    path.lineTo(w, h * .75);
    path.quadraticBezierTo(w / 2, h, 0, h * 0.75);
    path.lineTo(0, h * 0.75);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class CustomClipPathThree extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double h = size.height;
    double w = size.width;
    Path path = Path();
    path.moveTo(w, 0);
    path.quadraticBezierTo(w * 0.4, h / 2, w, h);

    path.lineTo(w, h);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class CustomClipPathFour extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double h = size.height;
    double w = size.width;
    Path path = Path();

    path.lineTo(w, 0);
    path.lineTo(w, h * 0.35);
    path.quadraticBezierTo(w * 0.5, h, 0, h);
    path.lineTo(0, h * 0.5);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class CustomClipPathFive extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double h = size.height;
    double w = size.width;
    Path path = Path();

    path.moveTo(w, h);

    path.lineTo(w, 0);
    path.quadraticBezierTo(w * 0.4, h * .2, w * 0.45, h);

    path.lineTo(w, h);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
