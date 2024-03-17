
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_jadara/Feature/Home/presentation/manger/cubit/home_cubit.dart';
import 'package:task_jadara/Feature/Home/presentation/manger/cubit/home_state.dart';
import 'package:task_jadara/Feature/Home/presentation/views/widgets/category_view.dart';


class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()..getCategorysData(),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .17,
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            final homeCubit = context.read<HomeCubit>();
            if (state is GetCategoryLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is GetCategoryFailure) {
              return const Text('لا يوجد تصنيفات ');
            } else if (state is GetCategorySuccess) {
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: homeCubit.category.length,
                itemBuilder: (context, index) {
                  return CategoryView(
                    categorys: homeCubit.category[index],
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

