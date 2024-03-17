import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_jadara/Feature/Home/presentation/manger/cubit/home_cubit.dart';
import 'package:task_jadara/Feature/Home/presentation/manger/cubit/home_state.dart';
import 'package:task_jadara/Feature/Home/presentation/views/widgets/product_view.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()..getProductsData(),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .2,
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            final homeCubit = context.read<HomeCubit>();
            if (state is GetProductLoading) {
              return const Center(
                  child: CircularProgressIndicator(
                color: Colors.black,
                strokeWidth: 6.0,
              ));
            } else if (state is GetProductFailure) {
              return const Text('لا يوجد مفروم ');
            } else if (state is GetProductSuccess) {
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: homeCubit.product.length,
                itemBuilder: (context, index) {
                  return ProductView(
                    product: homeCubit.product[index],
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
