import 'package:booklyapp/core/utils/fontstyle.dart';
import 'package:flutter/material.dart';

class BookTitles extends StatelessWidget {
  final String title, auther;
  const BookTitles({super.key, required this.title, required this.auther});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        spacing: 3,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            width: 8,
          ),
          Text(
            title,
            overflow: TextOverflow.ellipsis,
            style: Fontstyle.proxima_Bold_17,
          ),
          Text(
            textAlign: TextAlign.center,
            auther,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: Fontstyle.proxima_regular_17,
          )
        ],
      ),
    );
  }
}
