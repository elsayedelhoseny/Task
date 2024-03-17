
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:task_jadara/Feature/Menu/aboutapp/data/cubit/about_app_state.dart';
import 'package:task_jadara/Feature/Menu/aboutapp/data/model/about_model.dart';
class AboutAppCubit extends Cubit<AboutAppState> {
  AboutAppCubit() : super(AboutAppSInitial());
  static const String baseUrl = 'https://abomajid.site.jadara.work/api';


List<AboutModel> aboutApp = [];
  void getAboutAppData() async {
    Response response = await http.get(Uri.parse('$baseUrl/get-about-application'),
        headers: {'Accept': 'application/json', 'Accept-Language': 'ar'});
    final responseBody = jsonDecode(response.body);
    if (responseBody['status'] == true) {
       if (responseBody['data'] is Map<String, dynamic>) {
      aboutApp.add(AboutModel.fromJson(json: responseBody['data']));
    } else if (responseBody['data'] is List) {
      for (var item in responseBody['data']) {
        aboutApp.add(AboutModel.fromJson(json: item));
      }
    }
      emit(AboutAppSSuccess());
    } else {
      emit(AboutAppSFailure());
    }
  }


}