class AboutModel {
  final String imageAbout;
  final String about;
  final String imageVision;
  final String vision;
  final String imageMessage;
  final String message;
  final String imageGoal;
  final String goal;

  AboutModel({
    required this.imageAbout,
    required this.about,
    required this.imageVision,
    required this.vision,
    required this.imageMessage,
    required this.message,
    required this.imageGoal,
    required this.goal,
  });

  factory AboutModel.fromJson({required Map<String, dynamic> json}) {
    return AboutModel(
      imageAbout: json['image_about'],
      about: json['about'],
      imageVision: json['image_vision'],
      vision: json['vision'],
      imageMessage: json['image_message'],
      message: json['message'],
      imageGoal: json['image_goal'],
      goal: json['goal'],
    );
  }
}
