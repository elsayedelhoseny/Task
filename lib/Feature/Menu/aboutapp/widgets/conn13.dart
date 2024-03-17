import 'package:flutter/material.dart';

class Conn13 extends StatelessWidget {
  const Conn13(
      {super.key, required this.image, required this.tex2, required this.tex1});
  final String image;
  final String tex2;
  final String tex1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 368,
        height: 226,
        decoration: BoxDecoration(
          color: const Color(0xff004252),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.white),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              image,
              width: 77,
              height: 81,
            ),
            const SizedBox(height: 10),
            Text(
              tex1,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 15),
            Text(
              tex2,
              maxLines: 2, 
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
