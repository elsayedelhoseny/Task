import 'package:flutter/material.dart';

class EndPage extends StatelessWidget {
  const EndPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 36, left: 30, right: 30,bottom: 100),
      child: Container(
        height: 185,
        width: 368,
        decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(8),
            border: Border.all(color: Colors.white)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'جميع الحقوق محفوظة لشركة ملحمة ابو ماجد 2023',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 11),
           Image.asset('assets/image/Group.png'),
            const SizedBox(height: 11),
            const Text(
              'الرقم الضريبي :    3209024152700009 ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
