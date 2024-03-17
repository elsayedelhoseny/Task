// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:task_jadara/Feature/Menu/Privacy/widgets/privacy_body.dart';

class Privacy extends StatelessWidget {
  const Privacy({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: Color(0xff025366),
          body: PrivacyBody(),
        ),
      ),
    );
  }
}
