import 'package:booklyapp/Features/home/presentation/views/widget/book\'s_cover.dart';

import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 8,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(child: book_cover()),
            SizedBox(
              width: 15,
            ),
            Expanded(child: book_cover()),
          ],
        ),
      ),
    );
  }
}
