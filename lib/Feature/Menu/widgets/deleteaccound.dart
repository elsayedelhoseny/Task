import 'package:flutter/material.dart';

class DeleteConfirmationScreen extends StatefulWidget {
  const DeleteConfirmationScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DeleteConfirmationScreenState createState() =>
      _DeleteConfirmationScreenState();
}

class _DeleteConfirmationScreenState extends State<DeleteConfirmationScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 427,
      width: 381,
      decoration: BoxDecoration(
        color: const Color(0xff003946),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 1),
            child: Image.asset('assets/image/menu/Home Indicator.png'),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 30),
            child: Text(
              'هل أنت متأكد من حذف حسابك؟',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
              height: 98,
              width: 102,
              child: Image.asset('assets/image/menu/Group 1000001141.png')),
          const SizedBox(height: 53),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 124,
                  height: 38,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                      child: Text('لا', style: TextStyle(color: Colors.white))),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 124,
                  height: 38,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                    child: Text(
                      'نعم',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
