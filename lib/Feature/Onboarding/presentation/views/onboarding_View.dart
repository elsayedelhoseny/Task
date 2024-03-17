// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_jadara/Feature/Auth/presentation/views/login.dart';
import 'package:task_jadara/Feature/Onboarding/presentation/manger/cubit/onboarding_cubit.dart';
import 'package:task_jadara/Feature/Onboarding/presentation/views/widgets/dots_widgets.dart';
import 'package:task_jadara/Feature/Onboarding/presentation/views/widgets/pageViewWidget.dart';

import '../manger/cubit/onboarding_state.dart';


class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardingCubit()..getOnboarding(),
      child: BlocConsumer<OnboardingCubit, OnboardingState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = OnboardingCubit.get(context);
          return Scaffold(
            backgroundColor: const Color(0xff025366),
            body: SafeArea(
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PageViewWidget(
                      onboardingList: cubit.onboarding,
                      onPageChange: (value) => cubit.changeCurrentIndex(value),
                      pageController: cubit.pageController,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          DotIndicator(index: cubit.currentIndex),
                          const Spacer(),
                          MaterialButton(
                           shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              side: const BorderSide(color: Colors.white, width: 2.0),
                            ),
                            color: const Color(0xff083944),
                            onPressed: () {
                              if (cubit.currentIndex == 2) {
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                                  return const LoginView();
                                },));
                              } else {
                                cubit.checkCurrentIndex();
                              }
                            },
                            padding: const EdgeInsets.all(15),
                            child: Text(
                              cubit.currentIndex == 2 ? 'ابدء' : 'التالي'
                              ,style: const TextStyle(fontSize: 20),
                            )
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}