class CategoryModel{
  int? id;
  String? name;
  String? photo;
  CategoryModel.fromJson({required Map<String,dynamic> json}){
    id = json['id'];
    name = json['name'];
    photo = json['photo'];
  }
}