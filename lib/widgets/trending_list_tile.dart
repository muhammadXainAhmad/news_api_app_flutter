import 'package:flutter/material.dart';
import 'package:news_api_app/constants/utils.dart';
import 'package:news_api_app/models/article_model.dart';
import 'package:news_api_app/views/web_view_screen.dart';
import 'package:news_api_app/widgets/build_image.dart';

class TrendingListTile extends StatelessWidget {
  final List<ArticleModel> article;
  const TrendingListTile({super.key, required this.article});
  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          article.map((news) {
            return GestureDetector(
              onTap:
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WebViewScreen(webUrl: news.webUrl),
                    ),
                  ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: whiteClr,
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        child: buildImage(news.urlToImage, 120, 120),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8.0,
                            vertical: 8,
                          ),
                          child: Column(
                            children: [
                              Text(
                                maxLines: 2,
                                textAlign: TextAlign.center,
                                news.title,
                                style: TextStyle(
                                  color: blackClr,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                maxLines: 2,
                                textAlign: TextAlign.center,
                                news.desc,
                                style: TextStyle(
                                  color: greyClr,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
    );
  }
}
