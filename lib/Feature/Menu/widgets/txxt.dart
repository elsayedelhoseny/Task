import 'package:flutter/material.dart';

class CustomTxxt extends StatelessWidget {
  const CustomTxxt({super.key, required this.txxt});
  final String txxt;
  @override
  Widget build(BuildContext context) {
    return Text(
      txxt,
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
