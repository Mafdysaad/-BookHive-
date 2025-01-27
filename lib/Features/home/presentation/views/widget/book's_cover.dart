import 'package:booklyapp/core/utils/assets.dart';
import 'package:flutter/material.dart';

class BookCover extends StatelessWidget {
  const BookCover({super.key, required this.url});
  final String url;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 4,
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(20),
              image:
                  DecorationImage(fit: BoxFit.fill, image: NetworkImage(url)))),
    );
  }
}
