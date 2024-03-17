import 'package:flutter/material.dart';

import 'custom_row5.dart';

class CustomCon2 extends StatelessWidget {
  const CustomCon2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
      child: Container(
        height: 365,
        width: 368,
        decoration: BoxDecoration(
            color: const Color(0xff004252),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.white)),
        child: const Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 9),
              child: CustomRow5(
                txt20: 'English',
                txtimg1: 'assets/image/menu/انجليزي.png',
              ),
            ),
            Divider(
              indent: 10,
              endIndent: 10,
              color: Colors.white,
            ),
            CustomRow5(
              txt20: 'الاشعارات',
              txtimg1: 'assets/image/menu/الاشعارات.png',
            ),
            Divider(
              indent: 10,
              endIndent: 10,
              color: Colors.white,
            ),
            CustomRow5(
              txt20: 'الوضع المضئ',
              txtimg1: 'assets/image/menu/الوضع المضي.png',
            ),
            Divider(
              indent: 10,
              endIndent: 10,
              color: Colors.white,
            ),
            CustomRow5(
              txt20: 'الوضع الاساسي',
              txtimg1: 'assets/image/menu/الوضع الاساسي.png',
            ),
            Divider(
              indent: 10,
              endIndent: 10,
              color: Colors.white,
            ),
            CustomRow5(
              txt20: 'الوضع الليلي',
              txtimg1: 'assets/image/menu/الوضع الليلي.png',
            ),
          ],
        ),
      ),
    );
  }
}
