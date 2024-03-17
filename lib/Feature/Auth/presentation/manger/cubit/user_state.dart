


import 'package:task_jadara/Feature/Auth/data/models/active%20model/bbbbbb.dart';

class UserState {}

final class UserInitial extends UserState {}

final class SignInSuccess extends UserState {
  final String phoneNumber;

  SignInSuccess({required this.phoneNumber});
}

final class SignInLoading extends UserState {}

final class SignInFailure extends UserState {
  final String errMessage;

  SignInFailure({required this.errMessage});
}

final class ActiveSuccess extends UserState {
   final Bbbbbb user;

  ActiveSuccess({required this.user});
}

final class ActiveLoading extends UserState {}

final class ActiveFailure extends UserState {
  final String errMessage;

  ActiveFailure({required this.errMessage});
}



