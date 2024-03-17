import 'package:flutter/material.dart';
import 'package:task_jadara/Feature/Splash/widgets/splash_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Directionality(
            textDirection: TextDirection.rtl,
            child: Scaffold(
              backgroundColor: Color(0xff025366),
              body: SplashViewBody(),
            )));
  }
}
