import 'package:booklyapp/Features/home/presentation/views/widget/book\'s_cover.dart';
import 'package:booklyapp/Features/home/presentation/views/widget/book_titles.dart';

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
          spacing: 15,
          children: [
            Expanded(
              child: Column(
                children: [
                  SizedBox(
                    height: 8,
                  ),
                  BookCover(),
                  BookTitles()
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  SizedBox(
                    height: 8,
                  ),
                  BookCover(),
                  BookTitles()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
