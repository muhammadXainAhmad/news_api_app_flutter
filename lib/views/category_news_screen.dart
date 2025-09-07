import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_api_app/constants/utils.dart';
import 'package:news_api_app/methods/api_methods.dart';
import 'package:news_api_app/views/web_view_screen.dart';

class CategoryNewsScreen extends StatelessWidget {
  final String name;
  const CategoryNewsScreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueClr,
      appBar: AppBar(
        backgroundColor: blueClr,
        iconTheme: IconThemeData(color: whiteClr, size: 32),
        title: Text(
          name,
          style: TextStyle(
            color: whiteClr,
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: ApiMethods().getCategoryNews(name.toLowerCase()),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(color: whiteClr, strokeWidth: 2),
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
            return Container(
              decoration: BoxDecoration(
                color: whiteClr,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                physics: BouncingScrollPhysics(),
                itemCount: snapshot.data!.length,
                itemBuilder:
                    (context, index) => GestureDetector(
                      onTap:
                          () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => WebViewScreen(
                                    webUrl: snapshot.data![index].webUrl,
                                  ),
                            ),
                          ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24.0,
                          vertical: 12,
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: _buildImage(
                                snapshot.data![index].urlToImage,
                              ),
                            ),
                            Text(
                              snapshot.data![index].title,
                              style: TextStyle(
                                color: blackClr,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              textAlign: TextAlign.justify,
                              snapshot.data![index].description,
                              style: TextStyle(color: greyClr, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
              ),
            );
          }
        },
      ),
    );
  }
}

Widget _buildImage(String? url) {
  if (url == null ||
      url.isEmpty ||
      url.contains("investopedia.com") ||
      url.contains("huffingtonpost.com")) {
    return Image.asset(
      "assets/news1.jpg",
      height: 195,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }

  return CachedNetworkImage(
    imageUrl: url,
    height: 195,
    width: double.infinity,
    fit: BoxFit.cover,
    placeholder:
        (context, url) => Center(
          child: CircularProgressIndicator(strokeWidth: 2, color: blackClr),
        ),
    errorWidget:
        (context, url, error) => Image.asset(
          "assets/news1.jpg",
          height: 195,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
  );
}
