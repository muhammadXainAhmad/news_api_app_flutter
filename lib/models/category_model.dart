class CategoryModel {
  final String title;
  final String description;
  final String urlToImage;
  CategoryModel({
    required this.title,
    required this.description,
    required this.urlToImage,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      title: json['title'] ?? "No Title",
      description: json['description'] ?? "No Description Available",
      urlToImage: json['urlToImage'] ?? "",
    );
  }
}
