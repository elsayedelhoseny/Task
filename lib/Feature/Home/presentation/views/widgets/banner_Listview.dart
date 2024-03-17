// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_jadara/Feature/Home/presentation/manger/cubit/home_cubit.dart';
import 'package:task_jadara/Feature/Home/presentation/manger/cubit/home_state.dart';
import 'package:task_jadara/Feature/Home/presentation/views/widgets/bannerItem.dart';

class BannerListView extends StatelessWidget {
  const BannerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()..getBannersData(),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .2,
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            final homeCubit = context.read<HomeCubit>();
            if (state is GetBannaerLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is GetBannaerFailure) {
              return const Text('لا يوجد عروض مميزه ');
            } else if (state is GetBannaerSuccess) {
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: homeCubit.banners.length,
                itemBuilder: (context, index) {
                  return BannerItem(
                    banner: homeCubit.banners[index],
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
