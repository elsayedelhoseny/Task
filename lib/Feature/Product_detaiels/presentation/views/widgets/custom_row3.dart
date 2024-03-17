import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_jadara/Feature/Product_detaiels/presentation/manger/cubit/product_detaiels_cubit.dart';
import 'package:task_jadara/Feature/Product_detaiels/presentation/manger/cubit/product_detaiels_state.dart';
import 'package:task_jadara/constants.dart';

class CustomRow3 extends StatelessWidget {
  const CustomRow3({super.key});

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
            child: Row(
              children: [
                Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                    ),
                    child: Image.asset('assets/image/fire.png')),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'السعرات الحرارية',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                const Spacer(),
                Text(
                  cubit.productDetails.first.calories,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: kPrimaryColor),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}