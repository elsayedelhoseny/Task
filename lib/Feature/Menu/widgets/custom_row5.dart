import 'package:flutter/material.dart';

class CustomRow5 extends StatelessWidget {
  const CustomRow5({super.key, required this.txtimg1, required this.txt20});
  final String txtimg1;
  final String txt20;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2, bottom: 16, left: 14, right: 14),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: const BoxDecoration(shape: BoxShape.circle),
            child: CircleAvatar(
              backgroundImage: AssetImage(txtimg1),
              radius: 30,
            ),
          ),
          const SizedBox(width: 10),
          Text(
            txt20,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
