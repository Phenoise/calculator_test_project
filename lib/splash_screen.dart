import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:calculator_project/calculator.dart';
import 'package:page_transition/page_transition.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Image.asset('assets/test.png', width: 250,height: 250,),
        ],
      ),
      backgroundColor: Colors.blueAccent,
      nextScreen: Calculator(),
      splashIconSize: 250,
      duration: 3000,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.fade,
      animationDuration: const Duration(seconds: 2),
    );
  }
}
