class ArticleModel {
  final String title;
  final String? urlToImage;

  ArticleModel({required this.title, this.urlToImage});

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(title: json['title'], urlToImage: json['urlToImage']);
  }
}
