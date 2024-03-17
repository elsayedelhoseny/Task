import 'package:flutter/material.dart';
import 'package:task_jadara/Feature/Cart/presentation/widgets/select_view.dart';
import 'package:task_jadara/Feature/Product_detaiels/presentation/views/widgets/custom_counter.dart';
import 'package:task_jadara/constants.dart';

class CustomRow2 extends StatelessWidget {
  const CustomRow2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 30, right: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CounterRow(),
          const SizedBox(
            width: 11,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) {
                  return const CartScreen();
                },
              ));
            },
            child: Container(
              width: 207,
              height: 56,
              decoration: BoxDecoration(
                color: kthereColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Center(
                child: Text(
                  'اضف الي السله',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
