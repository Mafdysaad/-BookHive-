import 'package:booklyapp/Features/home/presentation/views/widget/book\'s_cover.dart';
import 'package:booklyapp/Features/home/presentation/views/widget/book_titles.dart';
import 'package:booklyapp/core/utils/approutes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomGridview extends StatelessWidget {
  const CustomGridview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 8, crossAxisCount: 2, mainAxisExtent: 470),
      itemBuilder: (context, index) => Column(
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
    );
  }
}
