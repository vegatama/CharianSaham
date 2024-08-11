import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Responsive(
      {super.key,
      required this.mobile,
      required this.tablet,
      required this.desktop});

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 592;
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 592 &&
      MediaQuery.of(context).size.width < 1169;
  static bool isdesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1169;

  @override
  Widget build(BuildContext context) {
    if (isMobile(context)) {
      return mobile;
    } else if (isTablet(context)) {
      return tablet;
    } else {
      return desktop;
    }
  }
}
