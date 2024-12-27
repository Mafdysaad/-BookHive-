import 'package:booklyapp/core/utils/fontstyle.dart';
import 'package:flutter/material.dart';

class BookTitles extends StatelessWidget {
  const BookTitles({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        child: Column(
          spacing: 3,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              width: 8,
            ),
            Text(
              'A Long Walk To Freedom ',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Fontstyle.proxima_Bold_17,
            ),
            Text(
              'Nelson Mandela',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: Fontstyle.proxima_regular_17,
            )
          ],
        ),
      ),
    );
  }
}
