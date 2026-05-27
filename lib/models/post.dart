class PostModel {
  final String user;
  final String comment;
  final String time;

  PostModel({
    required this.user,
    required this.comment,
    required this.time,
  });

  factory PostModel.fromMap(Map<String, dynamic> map) {
    return PostModel(
      user: map['user'],
      comment: map['comment'],
      time: map['time'],
    );
  }
}