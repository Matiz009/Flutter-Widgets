import 'dart:convert';

List<SamplePosts> samplePostsFromJson(String str) => List<SamplePosts>.from(
    json.decode(str).map((x) => SamplePosts.fromJson(x)));

String samplePostsToJson(List<SamplePosts> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SamplePosts {
  SamplePosts({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  int userId;
  int id;
  String title;
  String body;

  factory SamplePosts.fromJson(Map<String, dynamic> json) => SamplePosts(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };
}
