// APIレスポンスのモデル
// Contentはid, title, subtitle, priceプロパティを持つ
class Content {
  final String id;
  final String title;
  final String body;
  final int order;
  Content({
    required this.id,
    required this.title,
    required this.body,
    required this.order,
  });
  factory Content.fromJson(Map<String, dynamic> json) {
    return Content(
      id: json['id'],
      title: json['title'],
      body: json['body'],
      order: json['order'],
    );
  }
}
