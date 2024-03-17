// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:task_jadara/Feature/Onboarding/data/model/model.dart';
import 'package:task_jadara/Feature/Onboarding/presentation/views/widgets/skip_button.dart';
import 'package:task_jadara/constants.dart';

class PageViewWidget extends StatelessWidget {
  final PageController pageController;
  final List<OnBoardingModel> onboardingList;
  final dynamic onPageChange;
  const PageViewWidget({
    super.key,
    required this.onPageChange,
    required this.onboardingList,
    required this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: PageView.builder(
        controller: pageController,
        itemCount: onboardingList.length,
        onPageChanged: onPageChange,
        itemBuilder: (context, index) {
          return Column(
            children: [
               const Padding(
                 padding:  EdgeInsets.only(right: 15,top: 15),
                 child: SkipButton(),
               ),
              const SizedBox(
                height: 10,
              ),
              Image.network(
                onboardingList[index].image,
                height: 250,
                width: 250,
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: background,
                    width: 2,
                  ),
                  color: Colors.white.withOpacity(.3),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      onboardingList[index].title,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        onboardingList[index].desc,
                        style:
                            const TextStyle(fontSize: 12, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
