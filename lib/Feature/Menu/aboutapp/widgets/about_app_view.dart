import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_jadara/Feature/Menu/aboutapp/data/cubit/about_app_cubit.dart';
import 'package:task_jadara/Feature/Menu/aboutapp/data/cubit/about_app_state.dart';
import 'package:task_jadara/Feature/Menu/aboutapp/widgets/conn13.dart';
import 'package:task_jadara/Feature/Menu/profile/widgets/appbarr.dart';

class AboutAppBody extends StatelessWidget {
  const AboutAppBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AboutAppCubit()..getAboutAppData(),
      child: BlocBuilder<AboutAppCubit, AboutAppState>(
        builder: (context, state) {
          final cubit = BlocProvider.of<AboutAppCubit>(context);

          if (cubit.aboutApp.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }

          return SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Appbarr(text: 'عن التطبيق '),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 15, right: 30, left: 30, bottom: 30),
                  child: Conn13(
                    image: cubit.aboutApp.first.imageAbout,
                    tex1: 'نبذه عنا ',
                    tex2: cubit.aboutApp.first.about,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 15, right: 30, left: 30, bottom: 30),
                  child: Conn13(
                    image: cubit.aboutApp.first.imageVision,
                    tex1: 'رؤيتنا ',
                    tex2: cubit.aboutApp.first.vision,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 15, right: 30, left: 30, bottom: 30),
                  child: Conn13(
                    image: cubit.aboutApp.first.imageMessage,
                    tex1: 'رسالتنا',
                    tex2: cubit.aboutApp.first.message,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 15, right: 30, left: 30, bottom: 30),
                  child: Conn13(
                    image: cubit.aboutApp.first.imageGoal,
                    tex1: 'اهدافنا',
                    tex2: cubit.aboutApp.first.goal,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
