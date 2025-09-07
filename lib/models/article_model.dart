class ArticleModel {
  final String title;
  final String? urlToImage;
  final String? webUrl;

  ArticleModel({required this.title, this.urlToImage, required this.webUrl});

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      title: json['title'],
      urlToImage: json['urlToImage'],
      webUrl: json["url"],
    );
  }
}
