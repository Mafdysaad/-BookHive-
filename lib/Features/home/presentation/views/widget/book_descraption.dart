import 'package:booklyapp/core/utils/fontstyle.dart';
import 'package:flutter/material.dart';

class BookDescraption extends StatelessWidget {
  const BookDescraption({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'A Long Walk To Freedom ',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Fontstyle.proxima_Bold_24,
        ),
        Text(
          'Nelson Mandela',
          style: Fontstyle.proxima_regular_20,
        ),
      ],
    );
  }
}
