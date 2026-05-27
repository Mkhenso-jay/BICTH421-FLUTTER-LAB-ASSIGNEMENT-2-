class OpportunityModel {
  final String image;
  final String title;
  final String subtitle;

  OpportunityModel({
    required this.image,
    required this.title,
    required this.subtitle,
  });

  factory OpportunityModel.fromMap(Map<String, dynamic> map) {
    return OpportunityModel(
      image: map['image'],
      title: map['title'],
      subtitle: map['subtitle'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "image": image,
      "title": title,
      "subtitle": subtitle,
    };
  }
}