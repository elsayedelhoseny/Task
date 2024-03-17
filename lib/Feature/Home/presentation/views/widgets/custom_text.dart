import 'package:flutter/material.dart';
import 'package:task_jadara/constants.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32, right: 30.5, left: 30.5),
      child: Row(
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
          ),
          const Spacer(),
          const Column(
            children: [
              Text(
                'عرض الكل',
                style: TextStyle(
                  fontSize: 11,
                  color: kPrimaryColor,
                ),
              ),
              Text(
                '_______________',
                style: TextStyle(
                  fontSize: 6,
                  color: kPrimaryColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
