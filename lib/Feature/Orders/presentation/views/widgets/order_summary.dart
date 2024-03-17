import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_jadara/Feature/Orders/presentation/manger/cubit/order_cubit.dart';
import 'package:task_jadara/Feature/Orders/presentation/manger/cubit/order_state.dart';
import 'package:task_jadara/Feature/Orders/presentation/views/widgets/custom_row.dart';
import 'package:task_jadara/constants.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => OrderCubit()..getorderData(),
        child: BlocConsumer<OrderCubit, OrderState>(
          listener: (context, state) {},
          builder: (context, state) {
            final cubit = context.read<OrderCubit>();
            return Padding(
              padding: const EdgeInsets.only(
                top: 36,
                left: 30,
                right: 30,
              ),
              child: Container(
                  width: 368,
                  height: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(8),
                      border: Border.all(color: Colors.white)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 35, left: 16, right: 16, bottom: 36),
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        if (cubit.order.isEmpty) {
                          return const Center(
                            child: Text('No orders found'),
                          );
                        }
                        return Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadiusDirectional.circular(8),
                                    border: Border.all(color: ksecondColor)),
                                child: Image.network(
                                  cubit.order.first.items.first.productPhoto,
                                  width: 90,
                                  height: 80,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 16, bottom: 4, left: 16, right: 16),
                                child: CustomRow(
                                    fontSize: 14,
                                    text11: 'رقم الاوردر',
                                    text12: cubit.order.first.orderNumber,
                                    clr: kPrimaryColor),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: Divider(
                                  indent: 3,
                                  endIndent: 3,
                                  color: Colors.grey,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 16, bottom: 4, left: 16, right: 16),
                                child: CustomRow(
                                    fontSize: 14,
                                    text11: 'عدد العناصر ',
                                    text12:
                                        cubit.order.first.countItems.toString(),
                                    clr: kPrimaryColor),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: Divider(
                                  indent: 3,
                                  endIndent: 3,
                                  color: Colors.grey,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 16, bottom: 4, left: 16, right: 16),
                                child: CustomRow(
                                    fontSize: 14,
                                    text11: 'الاجمالي',
                                    text12: cubit.order.first.total.toString(),
                                    clr: kPrimaryColor),
                              ),
                            ]);
                      },
                    ),
                  )),
            );
          },
        ));
  }
}
