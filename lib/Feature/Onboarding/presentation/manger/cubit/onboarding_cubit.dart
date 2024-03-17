import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:task_jadara/Feature/Onboarding/data/model/model.dart';
import 'package:task_jadara/Feature/Onboarding/presentation/manger/cubit/onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingInitial());
  static const String baseUrl = 'https://abomajid.site.jadara.work/api';

  static OnboardingCubit get(context) => BlocProvider.of(context);
  PageController pageController = PageController();
  int currentIndex = 0;
 List<OnBoardingModel> onboarding = [];
  void getOnboarding() async {
    Response response = await http.get(Uri.parse('$baseUrl/introduction'),
        headers: {'Accept': 'application/json', 'Accept-Language': 'ar'});
    final responseBody = jsonDecode(response.body);
    if (responseBody['status'] == true) {
      for (var item in responseBody['data']) {
        onboarding.add(OnBoardingModel.fromJson(json: item));
      }
      emit(OnboardingSuccess());
    } else {
      emit(OnboardingFailure());
    }
  }
 changeCurrentIndex(index) {
    currentIndex = index;
    emit(ChangeCurrentIndexState());
  }

  checkCurrentIndex() {
    pageController.animateToPage(
      ++currentIndex,
      duration: const Duration(milliseconds: 500),
      curve: Curves.fastLinearToSlowEaseIn,
    );
    emit(MoveNextPageState());
  }

}