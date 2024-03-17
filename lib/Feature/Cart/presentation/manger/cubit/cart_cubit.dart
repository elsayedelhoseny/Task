import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:task_jadara/Feature/Cart/data/models/cart_model.dart';
import 'package:task_jadara/Feature/Cart/presentation/manger/cubit/cart_state.dart';
import 'package:task_jadara/constants.dart';


class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());
  static const String baseUrl = 'https://abomajid.site.jadara.work/api';



List<CartModel> carts = [];
Set<String> cartID ={};
double totalPrice =0;
  Future<void> getCartData() async {
    carts.clear();
    Response response = await http.get(Uri.parse('$baseUrl/cart'),
        headers: {
        'Authorization' : 'Bearer $token'  ,
        'Accept': 'application/json', 
        'Accept-Language': 'ar'});
    var responseBody = jsonDecode(response.body);
    totalPrice = double.parse(responseBody['data']['total']);
    if (responseBody['status'] == true) {
      for (var item in responseBody['data']['items']) {
        cartID.add(item['id'].toString());
        carts.add(CartModel.fromJson(data: item));
      }
      emit(GetCartSuccess());
    } else {
      emit(GetCartFailure());
    }
  }




void addToCart({required String id,}) async {
  try {
    final request = http.MultipartRequest('POST', Uri.parse('$baseUrl/add-to-cart'));
    request.headers.addAll({
      'Accept': 'application/json',
      'Accept-Language': 'ar',
        'Authorization' : 'Bearer $token'  ,
    });
    request.fields['product_id'] = id;
    request.fields['qty'] = '1';
    request.fields['option_ids[]'] = '1';
    request.fields['option_ids[]'] = '2';
    request.fields['device_id'] = 'kkkkk';

    final response = await request.send();

    if (response.statusCode == 200) {
      final responseBody = jsonDecode(await response.stream.bytesToString());
      if (responseBody['status'] == true) {
        cartID.contains(id) == true ? cartID.remove(id) : cartID.add(id);
        await getCartData();
        emit(AddtoCartSuccess());
      } else {
        emit(AddtoCartFailure());
      }
    } else {
      emit(AddtoCartFailure());
    }
  } catch (e) {
    emit(AddtoCartFailure());
  }
}



void deleteItemFromCart({required String itemId, required String deviceId}) async {
  try {
    Response response = await http.get(
      Uri.parse('$baseUrl/delete-item/$itemId?device_id=$deviceId'),
      headers: {
        'Authorization' : 'Bearer $token'  ,
        'Accept': 'application/json',
        'Accept-Language': 'ar',
      },
    );
    var responseBody = jsonDecode(response.body);
    if (responseBody['status'] == true) {
        cartID.contains(itemId) == true ? cartID.remove(itemId) : cartID.add(itemId);
      await getCartData(); 
      emit(DeletFromCartSuccess());
    } else {
      emit(DeletFromCartFailure());
    }
  } catch (e) {
    emit(GetCartFailure());
  }
}
}
