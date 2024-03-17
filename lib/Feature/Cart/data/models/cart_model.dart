class CartModel{
  int? id;
  String? title;
  double? price;
  String? photo;
  String? description;
  CartModel.fromJson({required Map<String,dynamic> data}){
    id = data['id'];
    title = data['product_title'];
    price = double.parse(data['product_price']);
    photo = data['product_photo'];
    description = data['product_desc']?? '';

  }
}