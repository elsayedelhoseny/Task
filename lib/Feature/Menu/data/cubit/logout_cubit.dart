import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_jadara/constants.dart';
import 'logout_state.dart';

class LogoutCubit extends Cubit<LogoutState> {
  LogoutCubit() : super(LogoutInitial());

  Future<void> logoutRequest() async {
    try {
      emit(LogoutLoading());

      var headers = {
        'Accept': 'application/json',
        'Accept-Language': 'ar',
        'Authorization': 'Bearer $token',
      };
      var request = http.Request('GET', Uri.parse('https://abomajid.site.jadara.work/api/logout'));

      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        final responseBody = await response.stream.bytesToString();
        final logoutResponse = jsonDecode(responseBody);

        if (logoutResponse['status']) {
          emit(LogoutSuccess());
        } else {
          emit(LogoutFailure());
        }
      } else {
        emit(LogoutFailure());
      }
    } catch (e) {
      emit(LogoutFailure());
    }
  }
}