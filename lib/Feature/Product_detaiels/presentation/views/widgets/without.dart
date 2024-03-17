import 'package:flutter/material.dart';
import 'package:task_jadara/Feature/Product_detaiels/presentation/views/widgets/custom_size.dart';

// ignore: camel_case_types
class without extends StatelessWidget {
  const without({super.key});

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
                  CustomSize(text: 'بدون لية'),
                  SizedBox(
                    width: 10,
                  ),
                  CustomSize(text: 'بدون كرشة'),
                  SizedBox(
                    width: 10,
                  ),
                  CustomSize(text: 'بدون كوارع '),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              CustomSize(text: 'بدون راس'),
            ],
          )
        ],
      ),
    );
  }
}
