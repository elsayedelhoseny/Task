// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:task_jadara/Feature/Orders/presentation/views/widgets/order_numder_list.dart';
import 'package:task_jadara/Feature/Orders/presentation/views/widgets/select_order.dart';

class OrdersViewBody extends StatelessWidget {
  const OrdersViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 30),
            child: Center(
              child: Text('الطلبات',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  )),
            ),
          ),
          SelectOrders(),
          OrderNumberListView(),
        ],
      ),
    );
  }
}
