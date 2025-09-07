import 'package:flutter/material.dart';
import 'package:news_api_app/constants/utils.dart';
import 'package:news_api_app/views/category_news_screen.dart';

class CategoryCircleList extends StatelessWidget {
  final List categories;
  const CategoryCircleList({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap:
              () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (context) => CategoryNewsScreen(
                        name: categories[index].categoryName,
                      ),
                ),
              ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Stack(
              alignment: Alignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Image.asset(
                    height: 122,
                    width: 122,
                    categories[index].categoryImage,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: Colors.black38,
                  ),
                  height: 122,
                  width: 122,
                ),
                Text(
                  textAlign: TextAlign.center,
                  categories[index].categoryName,
                  style: TextStyle(
                    color: whiteClr,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
