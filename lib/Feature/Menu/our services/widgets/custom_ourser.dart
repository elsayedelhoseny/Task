import 'package:flutter/material.dart';
import 'package:task_jadara/constants.dart';

// ignore: must_be_immutable
class CustomOurSer extends StatelessWidget {
  const CustomOurSer({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 230,
      width: 368,
      child: Card(
        color: kthereColor,
        child: Stack(
          children: [
            Image.asset('assets/image/menu/phhoto.png'),
            const Positioned(
              left: 12,
              bottom: 25,
              child: Text(
                'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحةهذا  \nالنص هو مثال لنص يمكن أن يستبدل هذا النص هو مثال لنص',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
