import 'package:flutter/material.dart';
import 'package:task_jadara/constants.dart';

class SelectOrders extends StatefulWidget {
  const SelectOrders({super.key});

  @override
  State<SelectOrders> createState() => _SelectOrders();
}

class _SelectOrders extends State<SelectOrders> {
  bool con1 = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, right: 30, left: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                con1 = true;
              });
            },
            child: Container(
              height: 46,
              width: 175,
              decoration: BoxDecoration(
                  border: Border.all(color: con1 ? kPrimaryColor : Colors.grey),
                  color: background,
                  borderRadius: BorderRadius.circular(6)),
              child: Center(
                child: Text(
                  'طلبات سابقه',
                  style: TextStyle(
                      color: con1 ? kPrimaryColor : Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                con1 = false;
              });
            },
            child: Container(
              height: 46,
              width: 175,
              decoration: BoxDecoration(
                  border: Border.all(color: con1 ? Colors.grey : kPrimaryColor),
                  color: background,
                  borderRadius: BorderRadius.circular(6)),
              child: Center(
                child: Text(
                  ' طلبات حالية',
                  style: TextStyle(
                      color: con1 ? Colors.grey : kPrimaryColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
