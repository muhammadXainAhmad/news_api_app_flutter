import 'package:flutter/material.dart';
import 'package:news_api_app/constants/utils.dart';
import 'package:news_api_app/methods/api_methods.dart';

class CategoryNewsScreen extends StatelessWidget {
  const CategoryNewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenW = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: blueClr,
      appBar: AppBar(
        backgroundColor: blueClr,
        iconTheme: IconThemeData(color: whiteClr, size: 32),
        title: Text(
          "Business",
          style: TextStyle(
            color: whiteClr,
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: ApiMethods().getCategoryNews(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(color: blackClr, strokeWidth: 2),
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
              width: screenW,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: BouncingScrollPhysics(),
                itemCount: snapshot.data!.length,
                itemBuilder:
                    (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24.0,
                        vertical: 12,
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                              image: NetworkImage(
                                snapshot.data![index].urlToImage,
                                headers: {
                                  "User-Agent":
                                      "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
                                      "AppleWebKit/537.36 (KHTML, like Gecko) "
                                      "Chrome/120.0.0.0 Safari/537.36",
                                },
                              ),
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Image.asset(
                                  "assets/news1.jpg",
                                  height: 195,
                                  width: screenW,
                                  fit: BoxFit.cover,
                                );
                              },
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
            );
          }
        },
      ),
    );
  }
}
