import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class CounterRow extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _CounterRowState createState() => _CounterRowState();
}

class _CounterRowState extends State<CounterRow> {
  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  void decrement() {
    setState(() {
      if (count > 0) {
        count--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 56,
            width: 56,
            decoration: BoxDecoration(
              color: const Color(0xff043E4B),
              borderRadius: BorderRadius.circular(6),
            ),
            child: IconButton(
              icon: const Icon(Icons.add),
              onPressed: increment,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            '$count',
            style: const TextStyle(fontSize: 18.0),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            height: 56,
            width: 56,
            decoration: BoxDecoration(
              color: const Color(0xff043E4B),
              borderRadius: BorderRadius.circular(6),
            ),
            child: IconButton(
              icon: const Icon(Icons.remove),
              onPressed: decrement,
            ),
          ),
        ],
      ),
    );
  }
}
