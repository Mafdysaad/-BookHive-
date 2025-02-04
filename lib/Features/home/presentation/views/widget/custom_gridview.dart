import 'package:booklyapp/Features/home/Data/models/book_model/book_modle.dart';
import 'package:booklyapp/Features/home/presentation/view_models/featrued_book_cubit/home_book_cubit.dart';
import 'package:booklyapp/Features/home/presentation/views/widget/book\'s_cover.dart';
import 'package:booklyapp/Features/home/presentation/views/widget/book_titles.dart';
import 'package:booklyapp/core/const/url.dart';

import 'package:booklyapp/core/utils/approutes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CustomGridview extends StatelessWidget {
  final List<BookModle> books;
  const CustomGridview({super.key, required this.books});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: books.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 8, crossAxisCount: 2, mainAxisExtent: 470),
      itemBuilder: (context, index) => Column(
        children: [
          const SizedBox(
            height: 8,
          ),
          GestureDetector(
              onTap: () {
                GoRouter.of(context)
                    .push(Approutes.kBookDetails, extra: books[index]);
              },
              child: BookCover(
                  url: books[index].volumeInfo!.imageLinks?.smallThumbnail)),
          BookTitles(
            title: books[index].volumeInfo!.title ?? "",
            auther: books[index].volumeInfo!.authors?[0] ?? '',
          )
        ],
      ),
    );
  }
}
