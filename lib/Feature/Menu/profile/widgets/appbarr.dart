import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Appbarr extends StatelessWidget {
  const Appbarr({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: SizedBox(
            width: 40, height: 40, child: Image.asset('assets/image/back.png')),
      ),
      Expanded(
        child: Center(
          child: Text(
            text,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
        ),
      ),
    ]);
  }
}
