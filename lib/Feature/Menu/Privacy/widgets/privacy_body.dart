import 'package:flutter/material.dart';
import 'package:task_jadara/Core/widgets/custom_button.dart';
import 'package:task_jadara/Feature/Menu/Privacy/widgets/custom_privacy.dart';
import 'package:task_jadara/Feature/Menu/profile/widgets/appbarr.dart';

class PrivacyBody extends StatelessWidget {
  const PrivacyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(30.0),
            child: Appbarr(text: 'سياسه الخصوصيه'),
          ),
          Padding(
            padding: EdgeInsets.only(top: 34, right: 30, left: 30, bottom: 34),
            child: CustomPrivacy(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: CustomButon(
              text: 'أوافق علي سياسة التطبيق',
              color: Color(0xff043E4B),
              colorborder: Color(0xff043E4B),
              colortxt: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
            child: CustomButon(
              text: 'أوافق علي سياسة التطبيق',
              color: Color(0xff025366),
              colorborder: Colors.grey,
              colortxt: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
