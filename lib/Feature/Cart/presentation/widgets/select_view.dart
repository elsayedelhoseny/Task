import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_jadara/Feature/Cart/presentation/manger/cubit/cart_cubit.dart';
import 'package:task_jadara/Feature/Cart/presentation/manger/cubit/cart_state.dart';
import 'package:task_jadara/constants.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartCubit()..getCartData(),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: const Color(0xff025366),
          body: BlocConsumer<CartCubit, CartState>(
              listener: (context, state) {},
              builder: (context, state) {
                final cubit = BlocProvider.of<CartCubit>(context);
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 10),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 30),
                        child: Center(
                          child: Text('السله',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              )),
                        ),
                      ),
                      Expanded(
                          child: cubit.carts.isNotEmpty
                              ? ListView.separated(
                                  itemCount: cubit.carts.length,
                                  separatorBuilder: (context, index) {
                                    return const SizedBox(
                                      height: 12,
                                    );
                                  },
                                  itemBuilder: (context, index) {
                                    return Container(
                                      padding: const EdgeInsets.all(10),
                                      decoration: const BoxDecoration(
                                        color: kthereColor,
                                      ),
                                      child: Row(
                                        children: [
                                          Image.network(
                                            cubit.carts[index].photo!,
                                            height: 87,
                                            width: 82,
                                            fit: BoxFit.fill,
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(cubit.carts[index].title!,
                                                    style: const TextStyle(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w400)),
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                    cubit.carts[index]
                                                        .description!,
                                                    style: const TextStyle(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w400)),
                                                IconButton(
                                                    onPressed: () {
                                                      cubit.deleteItemFromCart(
                                                        itemId: cubit
                                                            .carts[index].id
                                                            .toString(),
                                                        deviceId: 'kkkk',
                                                      );
                                                    },
                                                    icon: const Icon(
                                                      Icons.delete,
                                                      size: 18,
                                                    )),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  })
                              : const Center(
                                  child: Text(
                                    " لا يوجد طلبات ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                )),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "سعر الطلب  : ${cubit.totalPrice} \$",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                                Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (_, __, ___) => const CartScreen(),
                  transitionDuration: const Duration(seconds: 0),
                ),
              );
                            },
                            icon: const Icon(Icons.refresh,color: Colors.white,),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            width: 210,
                            height: 50,
                            decoration: BoxDecoration(
                              color:
                                  kthereColor, // Adjust the color as needed
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: const Center(
                              child: Text(
                                'اضف الطلب ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 70,
                      )
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }
}
