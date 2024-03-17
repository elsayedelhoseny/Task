import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_jadara/Core/api/api_consumer.dart';
import 'package:task_jadara/Core/api/end_ponits.dart';
import 'package:task_jadara/Core/errors/exceptions.dart';
import 'package:task_jadara/Feature/Auth/data/models/LoginResponse.dart';
import 'package:task_jadara/Feature/Auth/data/models/active%20model/bbbbbb.dart';
import 'package:task_jadara/Feature/Auth/presentation/manger/cubit/user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit(this.api) : super(UserInitial());
  final ApiConsumer api;
  //Sign in Form key
  GlobalKey<FormState> signInFormKey = GlobalKey();
  TextEditingController signUpPhoneNumber = TextEditingController();
  GlobalKey<FormState> activeFormKey = GlobalKey();

  signIn() async {
    emit(SignInLoading());
    try {
      final response = await api.post(EndPoint.signIn, isFromData: true, data: {
        ApiKey.phone: signUpPhoneNumber.text,
        ApiKey.deviceId: 'TP1A.220624.014',
        ApiKey.phonekey: 966,
        ApiKey.tokenfirebase: 'token',
      });
      // ignore: unused_local_variable
      final login = LoginResponse.fromJson(response);
      emit(SignInSuccess(
          phoneNumber:
              signUpPhoneNumber.text)); 
    } on ServerException catch (e) {
      emit(SignInFailure(errMessage: e.errModel.errorMessage));
    }
  }

  String? c1;

  active(String c1) async {
    emit(ActiveLoading());
    try {
      final response = await api.post(
        EndPoint.active,
        isFromData: true,
        data: {
          ApiKey.phone: "555555555",
          ApiKey.phonekey: "966",
          ApiKey.code: c1,
        },
      );

      // ignore: avoid_print
      print(response);
      final user = Bbbbbb.fromJson(response);
    // CacheHelper().saveData(key: ApiKey.token, value:user.data!.token) ;
      emit(ActiveSuccess(user: user));
    } on ServerException catch (e) {
      emit(ActiveFailure(errMessage: e.errModel.errorMessage));
    }
  }



 
}
