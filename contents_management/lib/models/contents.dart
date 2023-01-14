// API Response Model
class Content {
  String title;
  String body;

  Content({required this.title, required this.body});

  factory Content.fromJson(Map<String, dynamic> json) {
    return Content(title: json['title'], body: json['body']);
  }
}
