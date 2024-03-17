class ProductModel{
  int? id;
  String? title;
  double? price;
  String? photo;
  String? description;
  ProductModel.fromJson({required Map<String,dynamic> data}){
    id = data['id'];
    title = data['title'];
    price = double.parse(data['price']);
    photo = data['photo'];
    description = data['description']?? '';

  }
}