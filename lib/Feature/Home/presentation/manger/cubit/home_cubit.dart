// home_cubit.dart
import 'dart:convert';
// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:task_jadara/Feature/Home/data/models/banners_model.dart';
import 'package:task_jadara/Feature/Home/data/models/category_model.dart';
import 'package:task_jadara/Feature/Home/data/models/products_model.dart';
import 'package:task_jadara/Feature/Home/presentation/manger/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static const String baseUrl = 'https://abomajid.site.jadara.work/api';



  List<BannerModel> banners = [];
  void getBannersData() async {
    Response response = await http.get(Uri.parse('$baseUrl/get-banners'),
        headers: {'Accept': 'application/json', 'Accept-Language': 'ar'});
    final responseBody = jsonDecode(response.body);
    if (responseBody['status'] == true) {
      for (var item in responseBody['data']) {
        banners.add(BannerModel.fromJson(data: item));
      }
      emit(GetBannaerSuccess());
    } else {
      emit(GetBannaerFailure());
    }
  }


  List<CategoryModel> category = [];
 void getCategorysData() async {
  var headers = {
    'Accept': 'application/json',
    'Accept-Language': 'ar'
  };

  var request = http.Request('GET', Uri.parse('$baseUrl/get-categories'));

  request.headers.addAll(headers);

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    final responseBody = jsonDecode(await response.stream.bytesToString());
    if (responseBody['status'] == true) {
      for (var item in responseBody['data']) {
        category.add(CategoryModel.fromJson(json: item));
      }
      emit(GetCategorySuccess());
    } else {
      emit(GetCategoryFailure());
    }
  } else {
    emit(GetCategoryFailure());
  }
}

List<ProductModel> product = [];
  void getProductsData() async {
    Response response = await http.get(Uri.parse('$baseUrl/get-products-of-category/1'),
        headers: {'Accept': 'application/json', 'Accept-Language': 'ar'});
    final responseBody = jsonDecode(response.body);
    if (responseBody['status'] == true) {
      for (var item in responseBody['data']['products']) {
        product.add(ProductModel.fromJson(data: item));
      }
      emit(GetProductSuccess());
    } else {
      emit(GetProductFailure());
    }
  }
}
