import 'package:flutter/material.dart';
import 'package:task_jadara/Feature/Product_detaiels/presentation/views/widgets/custom_size.dart';

// ignore: camel_case_types
class encapsulation extends StatelessWidget {
  const encapsulation({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 16, left: 30, right: 30),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomSize(text: 'بدون'),
                  SizedBox(
                    width: 10,
                  ),
                  CustomSize(text: 'أطباق مغلفة'),
                  SizedBox(
                    width: 10,
                  ),
                  CustomSize(text: 'تكييس '),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              CustomSize(text: 'أكياس فاكيوم - مفرغة من الهواء'),
            ],
          )
        ],
      ),
    );
  }
}
