import 'package:flutter/material.dart';
import 'package:news_api_app/constants/utils.dart';
import 'package:news_api_app/models/article_model.dart';
import 'package:news_api_app/views/web_view_screen.dart';

class TopStoriesCard extends StatelessWidget {
  final List<ArticleModel> article;
  const TopStoriesCard({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    final screenW = MediaQuery.sizeOf(context).width;
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      itemCount: article.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap:
              () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (context) =>
                          WebViewScreen(webUrl: article[index].webUrl),
                ),
              ),
          child: Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Container(
              width: screenW * 0.55,
              decoration: BoxDecoration(
                color: whiteClr,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, right: 8, left: 8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        article[index].urlToImage,
                        fit: BoxFit.cover,
                        height: 150,
                        width: screenW * 0.55,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      article[index].title,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),

                  Spacer(),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: 60,
                      height: 30,
                      decoration: BoxDecoration(
                        color: blueClr,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Icon(
                        Icons.arrow_forward,
                        color: whiteClr,
                        size: 28,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
