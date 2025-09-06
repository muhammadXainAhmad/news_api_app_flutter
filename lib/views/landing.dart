import 'package:flutter/material.dart';
import 'package:news_api_app/constants/utils.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenH = MediaQuery.sizeOf(context).height;
    final screenW = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/landing.jpg",
            fit: BoxFit.cover,
            height: screenH / 1.7,
            width: screenW,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: screenH * 0.45,
              width: screenW,
              decoration: BoxDecoration(
                color: whiteClr,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 18,
                ),
                child: Column(
                  children: [
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Buzz",
                            style: TextStyle(
                              color: blueClr,
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "News",
                            style: TextStyle(
                              color: blackClr,
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "The world's stories in one buzz",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Image.asset(
                        "assets/newspaper.png",
                        height: 150,
                        width: 150,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 10,
                        backgroundColor: blueClr,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        fixedSize: Size(screenW * 0.75, 50),
                      ),
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, "home");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Catch the Buzz",
                            style: TextStyle(
                              color: whiteClr,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.arrow_right_alt,
                            size: 34,
                            color: whiteClr,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
