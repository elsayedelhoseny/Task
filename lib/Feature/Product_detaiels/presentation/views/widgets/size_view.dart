import 'package:flutter/material.dart';
import 'package:task_jadara/Feature/Product_detaiels/presentation/views/widgets/custom_size.dart';

class SizeVeiw extends StatelessWidget {
  const SizeVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 16, left: 30, right: 30),
      child: Column(
        children: [
          Row(
            children: [
              CustomSize(text: '  لباني'),
              SizedBox(
                width: 10,
              ),
              CustomSize(text: '  صغير'),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              CustomSize(text: ' جذع وسط(يجزئ العقيقة)'),
              SizedBox(
                width: 10,
              ),
              CustomSize(text: '  وسط'),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          CustomSize(text: ' جذع طيب ( يجزئ العقيقة )'),
        ],
      ),
    );
  }
}
