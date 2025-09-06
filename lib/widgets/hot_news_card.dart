import 'package:flutter/material.dart';
import 'package:news_api_app/constants/utils.dart';

class HotNewsCard extends StatelessWidget {
  const HotNewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final screenW = MediaQuery.sizeOf(context).width;
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Container(
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
                  child: Image.asset(
                    "assets/news1.jpg",
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
                  textAlign: TextAlign.center,
                  "This is the heading of the above news.",
                  style: TextStyle(
                    color: blackClr,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  textAlign: TextAlign.center,
                  "Lorem ipsum is simply dummy text to display in a ui.",
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
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
                  child: Icon(Icons.arrow_forward, color: whiteClr, size: 28),
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 10),
        Container(
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
                  child: Image.asset(
                    "assets/news1.jpg",
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
                  textAlign: TextAlign.center,
                  "This is the heading of the above news.",
                  style: TextStyle(
                    color: blackClr,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  textAlign: TextAlign.center,
                  "Lorem ipsum is simply dummy text to display in a ui.",
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
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
                  child: Icon(Icons.arrow_forward, color: whiteClr, size: 28),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
