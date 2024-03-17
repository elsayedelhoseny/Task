import 'package:flutter/material.dart';

class CustomRow4 extends StatelessWidget {
  const CustomRow4(
      {super.key, required this.txtimg, required this.txt22, this.onTap});
  final String txtimg;
  final String txt22;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2, top: 16, left: 14, right: 14),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(shape: BoxShape.circle),
              child: CircleAvatar(
                backgroundImage: AssetImage(txtimg),
                radius: 30,
              ),
            ),
            const SizedBox(width: 10),
            Text(
              txt22,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            ),
          ],
        ),
        IconButton(icon: const Icon(Icons.arrow_forward), onPressed: onTap)
      ]),
    );
  }
}
