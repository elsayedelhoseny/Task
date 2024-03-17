import 'package:flutter/material.dart';
import 'package:task_jadara/Feature/Product_detaiels/presentation/views/widgets/custom_size.dart';

class Shredder extends StatelessWidget {
  const Shredder({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 16, left: 30, right: 30),
      child: Column(
        children: [
          Column(
            children: [
              Row(
                children: [
                  CustomSize(text: 'تقطيع شوربة'),
                  SizedBox(
                    width: 10,
                  ),
                  CustomSize(text: 'أنصاف-نصفين بالطول'),
                  SizedBox(
                    width: 10,
                  ),
                  CustomSize(text: 'أرباع'),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  CustomSize(text: 'تقطيع ثلاجة '),
                  SizedBox(
                    width: 10,
                  ),
                  CustomSize(text: 'كامل بدون تقطيع'),
                  SizedBox(
                    width: 10,
                  ),
                  CustomSize(text: 'مفطح'),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
