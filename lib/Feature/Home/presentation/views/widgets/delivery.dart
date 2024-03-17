import 'package:flutter/material.dart';
import 'package:task_jadara/constants.dart';

class Delivery extends StatefulWidget {
  // ignore: use_super_parameters
  const Delivery({Key? key}) : super(key: key);

  @override
  State<Delivery> createState() => _DeliveryState();
}

class _DeliveryState extends State<Delivery> {
  bool isSelected1 = true;
  bool isSelected2 = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 39, right: 30, left: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                isSelected1 = true;
                isSelected2 = false;
              });
            },
            child: Container(
              height: 90,
              width: 178,
              decoration: BoxDecoration(
                border: Border.all(
                    color: isSelected1 ? kPrimaryColor : ksecondColor),
                color: ksecondColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 20,
                      child: Image.asset('assets/image/truck.png'),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      'توصيل للمنزل',
                      style: TextStyle(
                        color: isSelected1 ? kPrimaryColor : Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          GestureDetector(
            onTap: () {
              setState(() {
                isSelected1 = false;
                isSelected2 = true;
              });
            },
            child: Container(
              height: 90,
              width: 178,
              decoration: BoxDecoration(
                border: Border.all(
                    color: isSelected2 ? kPrimaryColor : ksecondColor),
                color: ksecondColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 20,
                      child: Image.asset('assets/image/homee.png'),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'استلام من الفرع',
                      style: TextStyle(
                        color: isSelected2 ? kPrimaryColor : Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
