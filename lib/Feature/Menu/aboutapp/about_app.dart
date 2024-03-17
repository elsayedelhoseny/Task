import 'package:flutter/material.dart';
import 'package:task_jadara/Feature/Menu/aboutapp/widgets/about_app_view.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: Color(0xff025366),
          body: AboutAppBody(),
        ),
      ),
    );
  }
}
