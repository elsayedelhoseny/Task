import 'package:flutter/material.dart';
import 'package:task_jadara/Feature/Menu/Privacy/Privacy.dart';
import 'package:task_jadara/Feature/Menu/aboutapp/about_app.dart';
import 'package:task_jadara/Feature/Menu/our%20services/our_services.dart';
import 'package:task_jadara/Feature/Menu/widgets/custom_row4.dart';
import 'custom_row5.dart';

class CustomCon3 extends StatelessWidget {
  const CustomCon3({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
      child: Container(
        height: 443,
        width: 368,
        decoration: BoxDecoration(
            color: const Color(0xff004252),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.white)),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 9),
              child: CustomRow5(
                txt20: 'تواصل معنا عبر واتساب',
                txtimg1: 'assets/image/menu/تواصل معنا عبر واتساب.png',
              ),
            ),
            const Divider(
              indent: 10,
              endIndent: 10,
              color: Colors.white,
            ),
            CustomRow4(
              txt22: '  سياسه الخصوصيه',
              txtimg: 'assets/image/menu/الاسئلة الشائعة.png',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Privacy()),
                );
              },
            ),
            const Divider(
              indent: 10,
              endIndent: 10,
              color: Colors.white,
            ),
            CustomRow4(
              txt22: 'عن التطبيق',
              txtimg: 'assets/image/menu/عن التطبيق.png',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutApp()),
                );
              },
            ),
            const Divider(
              indent: 10,
              endIndent: 10,
              color: Colors.white,
            ),
            CustomRow4(
              txt22: 'خدماتنا',
              txtimg: 'assets/image/menu/خدماتنا.png',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const OurServices()),
                );
              },
            ),
            const Divider(
              indent: 10,
              endIndent: 10,
              color: Colors.white,
            ),
            const CustomRow5(
              txt20: 'قيم التطبيق',
              txtimg1: 'assets/image/menu/قيم التطبيق.png',
            ),
            const Divider(
              indent: 10,
              endIndent: 10,
              color: Colors.white,
            ),
            const CustomRow5(
              txt20: 'مشاركة التطبيق',
              txtimg1: 'assets/image/menu/المشاركه.png',
            ),
          ],
        ),
      ),
    );
  }
}
