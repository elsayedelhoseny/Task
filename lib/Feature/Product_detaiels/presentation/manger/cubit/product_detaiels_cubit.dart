import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:task_jadara/Feature/Product_detaiels/data/models/product_model.dart';
import 'package:task_jadara/Feature/Product_detaiels/presentation/manger/cubit/product_detaiels_state.dart';
class ProductDetailsCubit extends Cubit<ProductDetaielsState> {
  ProductDetailsCubit() : super(ProductDetaielsInitial());
  static const String baseUrl = 'https://abomajid.site.jadara.work/api';



List<ProductDetails> productDetails = [];
  Future<void> getProductDetails() async {
    Response response = await http.get(Uri.parse('$baseUrl/product-details/11'),
        headers: {
        'Authorization' : 'Bearer 1042|lb1H50WaTtFq3D93aBJ2CneH1irQ8Csbd7kT5sYG'  ,
        'Accept': 'application/json', 
        'Accept-Language': 'ar'});
    var responseBody = jsonDecode(response.body);
    if (responseBody['status'] == true) {
       if (responseBody['data'] is Map<String, dynamic>) {
      productDetails.add(ProductDetails.fromJson(json: responseBody['data']));
    } else if (responseBody['data'] is List) {
      for (var item in responseBody['data']) {
        productDetails.add(ProductDetails.fromJson(json: item));
      }
    }
      emit(ProductDetaielsSuccess());
    } else {
      emit(ProductDetaielsFailure());
    }
  }
  

  
  
  
  
  }