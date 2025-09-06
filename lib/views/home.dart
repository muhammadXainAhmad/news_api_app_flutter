import 'package:flutter/material.dart';
import 'package:news_api_app/constants/utils.dart';
import 'package:news_api_app/methods/category_data.dart';
import 'package:news_api_app/models/category_model.dart';
import 'package:news_api_app/widgets/app_name_text.dart';
import 'package:news_api_app/widgets/category_circle_list.dart';
import 'package:news_api_app/widgets/heading_text.dart';
import 'package:news_api_app/widgets/hot_news_card.dart';
import 'package:news_api_app/widgets/trending_list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoryModel> categories = [];
  @override
  void initState() {
    categories = getCategories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenH = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: bgClr,
      appBar: AppBar(
        backgroundColor: bgClr,
        title: AppNameText(),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeadingText(text: "Hottest News"),
              SizedBox(height: 10),
              SizedBox(height: screenH * 0.34, child: HotNewsCard()),
              SizedBox(height: 10),
              HeadingText(text: "Explore"),
              SizedBox(height: 10),
              SizedBox(
                height: 122,
                child: CategoryCircleList(categories: categories),
              ),
              SizedBox(height: 10),
              HeadingText(text: "Trending"),
              SizedBox(height: 10),
              TrendingListTile(),
            ],
          ),
        ),
      ),
    );
  }
}
