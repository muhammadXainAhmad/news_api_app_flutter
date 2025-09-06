import 'package:news_api_app/models/category_model.dart';

List<CategoryModel> getCategories() {
  return [
    CategoryModel(
      categoryName: "Business",
      categoryImage: "assets/business.jpg",
    ),
    CategoryModel(
      categoryName: "Entertainment",
      categoryImage: "assets/entertainment.jpg",
    ),
    CategoryModel(categoryName: "Science", categoryImage: "assets/science.jpg"),
    CategoryModel(categoryName: "Sports", categoryImage: "assets/sports.jpg"),
    CategoryModel(
      categoryName: "Technology",
      categoryImage: "assets/technology.jpg",
    ),
  ];
}
