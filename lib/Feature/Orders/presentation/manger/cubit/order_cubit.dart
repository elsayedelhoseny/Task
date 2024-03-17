import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:task_jadara/Feature/Orders/data/models/order_model.dart';
import 'package:task_jadara/Feature/Orders/presentation/manger/cubit/order_state.dart';
import 'package:task_jadara/constants.dart';


class OrderCubit extends Cubit<OrderState> {
  OrderCubit() : super(OrderInitial());
  static const String baseUrl = 'https://abomajid.site.jadara.work/api';



List<OrderModel> order = [];
  Future<void> getorderData() async {
    order.clear();
    Response response = await http.get(Uri.parse('$baseUrl/orders'),
        headers: {
        'Authorization' : 'Bearer $token'  ,
        'Accept': 'application/json', 
        'Accept-Language': 'ar'});
    var responseBody = jsonDecode(response.body);
    if (responseBody['status'] == true) {
      for (var item in responseBody['data']['current_orders']) {
        order.add(OrderModel.fromJson(json: item));
      }
      emit(OrderSuccess());
    } else {
      emit(OrderFailure());
    }
  }



}