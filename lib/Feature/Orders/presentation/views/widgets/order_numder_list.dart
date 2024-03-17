
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_jadara/Feature/Orders/presentation/manger/cubit/order_cubit.dart';
import 'package:task_jadara/Feature/Orders/presentation/manger/cubit/order_state.dart';
import 'package:task_jadara/Feature/Orders/presentation/views/widgets/order_numder.dart';



class OrderNumberListView extends StatelessWidget {
  const OrderNumberListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OrderCubit()..getorderData(),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 3,
        child: BlocBuilder<OrderCubit, OrderState>(
          builder: (context, state) {
            final homeCubit = context.read<OrderCubit>();
            if (state is OrderLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is OrderFailure) {
              return const Text('لا يوجد منتجات حاليا ');
            } else if (state is OrderSuccess) {
              return ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: homeCubit.order.length,
                itemBuilder: (context, index) {
                  return OrderNumber(
                   order: homeCubit.order[index],
                  );
                },
              );
            } else {
              return const SizedBox();
            }
          },
        ),
      ),
    );
  }
}