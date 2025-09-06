import 'package:flutter/material.dart';
import 'package:news_api_app/constants/utils.dart';

class HeadingText extends StatelessWidget {
  final String text;
  const HeadingText({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: blackClr,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
