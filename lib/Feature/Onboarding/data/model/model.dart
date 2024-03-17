class OnBoardingModel  {
  final int id;
  final String title;
  final String desc;
  final String image;

  OnBoardingModel({
    required this.id,
    required this.title,
    required this.desc,
    required this.image,
  });

  factory OnBoardingModel.fromJson({required Map<String, dynamic> json}) {
    return OnBoardingModel(
      id: json['id'],
      title: json['title'],
      desc: json['desc'],
      image: json['image'],
    );
  }
}