import 'package:flutter/material.dart';
import 'package:task_jadara/Feature/Orders/presentation/views/widgets/custom_app_order.dart';
import 'package:task_jadara/Feature/Orders/presentation/views/widgets/custom_details.dart';
import 'package:task_jadara/Feature/Orders/presentation/views/widgets/custom_text3.dart';
import 'package:task_jadara/Feature/Orders/presentation/views/widgets/endpage.dart';
import 'package:task_jadara/Feature/Orders/presentation/views/widgets/order_summary.dart';

class OrderDetailsView extends StatelessWidget {
  const OrderDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 80, right: 5, top: 24),
            child: CustomAppOrder(),
          ),
          CustomDetails(),
          CustomText3(text: 'ملخص الطلب'),
          OrderSummary(),
          EndPage(),
        ],
      ),
    );
  }
}
