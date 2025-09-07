class ArticleModel {
  final String title;
  final String desc;
  final String urlToImage;
  final String webUrl;

  ArticleModel({
    required this.title,
    required this.desc,
    required this.urlToImage,
    required this.webUrl,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      title: json['title'] ?? "No Title",
      desc: json['description'] ?? "No Description Available",
      urlToImage: json['urlToImage'] ?? "",
      webUrl:json["url"]??""
    );
  }
}
