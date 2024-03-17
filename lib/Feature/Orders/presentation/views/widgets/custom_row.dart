import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({
    super.key,
    required this.text11,
    required this.text12,
    required this.clr,
    this.fontSize,
  });
  final String text11;
  final String text12;
  final Color clr;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text11,
          style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.w400),
        ),
        const Spacer(),
        Text(
          text12,
          style: TextStyle(
            fontSize: 11,
            color: clr,
          ),
        ),
      ],
    );
  }
}
