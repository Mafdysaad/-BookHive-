import 'package:booklyapp/core/utils/fontstyle.dart';
import 'package:flutter/material.dart';

class BookDescraption extends StatelessWidget {
  const BookDescraption({super.key, required this.auther, required this.title});
  final String title, auther;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          textAlign: TextAlign.center,
          title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Fontstyle.proxima_Bold_24,
        ),
        Text(
          auther,
          style: Fontstyle.proxima_regular_20,
        ),
      ],
    );
  }
}
