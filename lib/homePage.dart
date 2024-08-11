import 'package:flutter/material.dart';
import 'widget/responsive.dart';
import 'homePage/desktop.dart';
import 'homePage/mobile.dart';
import 'homePage/tablet.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Responsive(
      mobile: mobileHomePage(),
      tablet: tabletHomePage(),
      desktop: desktopHomePage(),
    ));
  }
}
