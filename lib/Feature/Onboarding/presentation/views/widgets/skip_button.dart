import 'package:flutter/material.dart';
import 'package:task_jadara/Feature/Auth/presentation/views/login.dart';
import 'package:task_jadara/constants.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topRight,
        child: TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const LoginView();
                },
              ));
            },
            child: const Text(
              'تخطي',
              style: TextStyle(color: kPrimaryColor),
            )));
  }
}
