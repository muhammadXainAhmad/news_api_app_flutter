import 'package:news_api_app/models/category_heading_model.dart';

List<CategoryHeadingModel> getCategoriesHeading() {
  return [
    CategoryHeadingModel(
      categoryName: "Business",
      categoryImage: "assets/business.jpg",
    ),
    CategoryHeadingModel(
      categoryName: "Entertainment",
      categoryImage: "assets/entertainment.jpg",
    ),
    CategoryHeadingModel(
      categoryName: "Science",
      categoryImage: "assets/science.jpg",
    ),
    CategoryHeadingModel(
      categoryName: "Sports",
      categoryImage: "assets/sports.jpg",
    ),
    CategoryHeadingModel(
      categoryName: "Technology",
      categoryImage: "assets/technology.jpg",
    ),
  ];
}
