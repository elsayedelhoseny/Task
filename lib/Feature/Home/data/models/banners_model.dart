class BannerModel{
  int? id;
  String? photo;

  BannerModel.fromJson({required Map<String,dynamic> data}){
    id = data['id'];
    photo = data['photo'];
  }
}