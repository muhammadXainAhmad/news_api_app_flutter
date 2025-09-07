import 'package:flutter/material.dart';
import 'package:news_api_app/constants/utils.dart';

class TrendingListTile extends StatelessWidget {
  const TrendingListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            child: Image.asset(
              "assets/news1.jpg",
              height: 120,
              width: 120,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Column(
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    "This is the heading of the above news.",
                    style: TextStyle(
                      color: blackClr,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    textAlign: TextAlign.center,
                    "Lorem ipsum is simply dummy text to display in a ui.",
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
    );
  }
}
