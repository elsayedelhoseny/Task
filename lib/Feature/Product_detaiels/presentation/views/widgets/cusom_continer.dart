import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_jadara/Feature/Product_detaiels/presentation/manger/cubit/product_detaiels_cubit.dart';
import 'package:task_jadara/Feature/Product_detaiels/presentation/manger/cubit/product_detaiels_state.dart';

class CustomContiner extends StatelessWidget {
  const CustomContiner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductDetailsCubit, ProductDetaielsState>(
      builder: (context, state) {
         final cubit = BlocProvider.of<ProductDetailsCubit>(context);
        if (state is ProductDetaielsSuccess) {
          return Container(
            width: 428,
            height: 347,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(cubit.productDetails.first.photo),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 6, left: 30, right: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey,
                        ),
                        child: Image.asset('assets/image/Vector.png')),
                  ),
                  const Spacer(),
                  Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey,
                      ),
                      child: Image.asset('assets/image/heart2.png')),
                  const SizedBox(
                    width: 9,
                  ),
                  Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey,
                      ),
                      child: Image.asset('assets/image/heart2.png')),
                ],
              ),
            ),
          );
        } else {
          return const SizedBox
              .shrink(); // Return an empty container if the state is not ProductDetaielsSuccess
        }
      },
    );
  }
}
