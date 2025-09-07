import 'package:flutter/material.dart';
import 'package:news_api_app/constants/utils.dart';
import 'package:news_api_app/methods/api_methods.dart';
import 'package:news_api_app/methods/category_heading_data.dart';
import 'package:news_api_app/models/category_heading_model.dart';
import 'package:news_api_app/widgets/app_name_text.dart';
import 'package:news_api_app/widgets/category_circle_list.dart';
import 'package:news_api_app/widgets/heading_text.dart';
import 'package:news_api_app/widgets/top_stories_card.dart';
import 'package:news_api_app/widgets/trending_list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoryHeadingModel> categoriesHeading = [];
  ApiMethods apiMethods = ApiMethods();
  @override
  void initState() {
    categoriesHeading = getCategoriesHeading();
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
              HeadingText(text: "Top Stories"),
              SizedBox(height: 10),
              SizedBox(
                height: screenH * 0.34,
                child: FutureBuilder(
                  future: apiMethods.getNews(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                        child: CircularProgressIndicator(
                          color: blackClr,
                          strokeWidth: 2,
                        ),
                      );
                    } else if (snapshot.hasError) {
                      return Center(
                        child: Text(
                          "Error Loading News",
                          style: TextStyle(color: blackClr, fontSize: 14),
                        ),
                      );
                    } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                      return Center(
                        child: Text(
                          "No News Available",
                          style: TextStyle(color: blackClr, fontSize: 14),
                        ),
                      );
                    } else {
                      final articles = snapshot.data!;
                      return TopStoriesCard(article: articles);
                    }
                  },
                ),
              ),
              SizedBox(height: 10),
              HeadingText(text: "Explore"),
              SizedBox(height: 10),
              SizedBox(
                height: 122,
                child: CategoryCircleList(categories: categoriesHeading),
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
