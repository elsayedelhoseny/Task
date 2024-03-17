import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_jadara/Feature/Product_detaiels/presentation/manger/cubit/product_detaiels_cubit.dart';
import 'package:task_jadara/Feature/Product_detaiels/presentation/manger/cubit/product_detaiels_state.dart';

class CustomColum extends StatelessWidget {
  const CustomColum({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductDetailsCubit, ProductDetaielsState>(
      builder: (context, state) {
        final cubit = BlocProvider.of<ProductDetailsCubit>(context);
        if (cubit.productDetails.isEmpty) {
          return const CircularProgressIndicator();
        } else {
          return Padding(
            padding: const EdgeInsets.only(top: 16, left: 30, right: 30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      cubit.productDetails.first.title,
                      style: const TextStyle(fontSize: 18.0),
                    ),
                    Text(
                      '${cubit.productDetails.first.price} ريال سعودي',
                      style: const TextStyle(fontSize: 18.0),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 22,
                ),
                Text(
                  cubit.productDetails.first.desc,
                ),
              ],
            ),
          );
        }
      },
    );
  }
}