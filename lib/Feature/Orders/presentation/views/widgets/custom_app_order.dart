import 'package:flutter/material.dart';

class CustomAppOrder extends StatelessWidget {
  const CustomAppOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.ltr,
        child: ListTile(
          title: const Center(
            child: Text('تفاصيل الطلب',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                )),
          ),
          trailing: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 20,
              child: Image.asset('assets/image/Vector.png'),
            ),
          ),
        ));
  }
}
