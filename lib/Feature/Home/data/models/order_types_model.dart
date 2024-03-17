class OrderTypesModel {
  final int id;
  final String title;
  final String photo;

  OrderTypesModel({
    required this.id,
    required this.title,
    required this.photo,
  });

  factory OrderTypesModel.fromJson(jsonData) {
    return OrderTypesModel(
        id: jsonData['id'], title: jsonData['title'], photo: jsonData['photo']);
  }
}
