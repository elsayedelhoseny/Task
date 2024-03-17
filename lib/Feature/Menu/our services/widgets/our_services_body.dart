import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task_jadara/Feature/Menu/our%20services/widgets/custom_ourser.dart';
import 'package:task_jadara/Feature/Menu/profile/widgets/appbarr.dart';

class OurServicesBody extends StatelessWidget {
  const OurServicesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.all(30.0),
          child: Appbarr(text: 'خدماتنا'),
        ),
        Padding(
          padding: EdgeInsets.only(top: 34, right: 30, left: 30),
          child: CustomOurSer(),
        ),
      ],
    );
  }
}
