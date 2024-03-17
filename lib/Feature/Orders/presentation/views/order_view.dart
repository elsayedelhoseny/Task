import 'package:flutter/material.dart';
import 'package:task_jadara/Feature/Orders/presentation/views/widgets/ordersViewBody.dart';

class OrdersView extends StatelessWidget {
  const OrdersView ({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: Color(0xff025366),
          body: OrdersViewBody(),
        ),
      ),
    );
  }
}
