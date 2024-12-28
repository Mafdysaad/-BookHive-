import 'package:booklyapp/Features/home/presentation/views/widget/book\'s_cover.dart';
import 'package:booklyapp/Features/home/presentation/views/widget/book_titles.dart';
import 'package:booklyapp/core/utils/approutes.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 8,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          spacing: 15,
          children: [
            Expanded(
              child: Column(
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(Approutes.kBookDetails);
                      },
                      child: const BookCover()),
                  const BookTitles()
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(Approutes.kBookDetails);
                      },
                      child: const BookCover()),
                  const BookTitles()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
