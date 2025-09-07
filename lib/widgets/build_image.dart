import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_api_app/constants/utils.dart';

Widget buildImage(String? url,double h, double w) {
  if (url == null ||
      url.isEmpty ||
      url.contains("investopedia.com") ||
      url.contains("huffingtonpost.com")) {
    return Image.asset(
      "assets/news1.jpg",
      height: h,
      width: w,
      fit: BoxFit.cover,
    );
  }

  return CachedNetworkImage(
    imageUrl: url,
    height: h,
    width: w,
    fit: BoxFit.cover,
    placeholder:
        (context, url) => Center(
          child: CircularProgressIndicator(strokeWidth: 2, color: blackClr),
        ),
    errorWidget:
        (context, url, error) => Image.asset(
          "assets/news1.jpg",
          height: h,
          width: w,
          fit: BoxFit.cover,
        ),
  );
}
