class CategoryModel {
  final String image;
  final String name;
  final String count;

  CategoryModel({
    required this.image,
    required this.name,
    required this.count,
  });

  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    return CategoryModel(
      image: map['image'],
      name: map['name'],
      count: map['count'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "image": image,
      "name": name,
      "count": count,
    };
  }
}