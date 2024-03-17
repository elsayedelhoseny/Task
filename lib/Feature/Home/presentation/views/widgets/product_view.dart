import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_jadara/Feature/Cart/presentation/manger/cubit/cart_cubit.dart';
import 'package:task_jadara/Feature/Cart/presentation/manger/cubit/cart_state.dart';
import 'package:task_jadara/Feature/Home/data/models/products_model.dart';
import 'package:task_jadara/constants.dart';

class ProductView extends StatelessWidget {
  const ProductView({required this.product, super.key});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CartCubit>();
    return SizedBox(
      height: 200,
      width: 104,
      child: Card(
        color: kthereColor,
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Image.network(product.photo!),
                  Positioned(
                    left: 25,
                    bottom: 10,
                    child: Column(
                      children: [
                        Text(
                          product.title!,
                          style: const TextStyle(
                            fontSize: 10,
                          ),
                        ),
                        Text(
                          product.price.toString(),
                          style: const TextStyle(
                            color: kPrimaryColor,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 35,
                    bottom: 37,
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: const Color(0xff025366),
                      child: BlocBuilder<CartCubit, CartState>(
                        builder: (context, state) {
                          return IconButton(
                            onPressed: () async {
                              cubit.addToCart(id: product.id.toString());
                              await cubit.getCartData();
                            },
                            icon: Icon(
                              Icons.shopping_cart,
                              size: 15,
                              color:
                                  cubit.cartID.contains(product.id.toString())
                                      ? kPrimaryColor
                                      : Colors.white,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
