import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:chu_hai_long_flutter_10/src/pages/navigator.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Loading...',
        home: AnimatedSplashScreen(
            duration: 1000,
            splash: Icons.home,
            nextScreen: const NavigatorBuilder(),
            splashTransition: SplashTransition.fadeTransition,
            pageTransitionType: PageTransitionType.fade,
            backgroundColor: Colors.blue));
  }
}
