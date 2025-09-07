import "dart:convert";

import "package:flutter_dotenv/flutter_dotenv.dart";
import "package:http/http.dart" as http;
import "package:news_api_app/models/article_model.dart";
import "package:news_api_app/models/category_model.dart";

class ApiMethods {
  final apiKey = dotenv.env["NEWS_API_KEY"];
  Future<List<ArticleModel>> getNews() async {
    final response = await http.get(
      Uri.parse(
        "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=$apiKey",
      ),
    );
    var data = jsonDecode(response.body);
    if (data["status"] == "ok") {
      List articles = data["articles"];
      return articles.map((json) => ArticleModel.fromJson(json)).toList();
    } else {
      throw Exception("ERROR!");
    }
  }

  Future<List<CategoryModel>> getCategoryNews(String categoryName) async {
    final response = await http.get(
      Uri.parse(
        "https://newsapi.org/v2/top-headlines?country=us&category=$categoryName&apiKey=$apiKey",
      ),
    );
    var data = jsonDecode(response.body);
    if (data["status"] == "ok") {
      List articles = data["articles"];
      return articles.map((json) => CategoryModel.fromJson(json)).toList();
    } else {
      throw Exception("ERROR!");
    }
  }
}
