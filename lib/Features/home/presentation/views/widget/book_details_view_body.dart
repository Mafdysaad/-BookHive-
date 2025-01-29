import 'package:booklyapp/Features/home/Data/models/book_model/book_modle.dart';
import 'package:booklyapp/Features/home/presentation/views/widget/book\'s_cover.dart';
import 'package:booklyapp/Features/home/presentation/views/widget/book_descraption.dart';
import 'package:booklyapp/Features/home/presentation/views/widget/book_rating.dart';
import 'package:booklyapp/Features/home/presentation/views/widget/horzantil_book_listview.dart';
import 'package:booklyapp/Features/home/presentation/views/widget/taking_action.dart';

import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  final BookModle bookModle;
  const BookDetailsViewBody({super.key, required this.bookModle});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * .25),
                  child: BookCover(
                    url: bookModle.volumeInfo!.imageLinks!.thumbnail ?? '',
                  )),
              const SizedBox(
                height: 20,
              ),
              BookDescraption(
                title: bookModle.volumeInfo!.title ?? '',
                auther: bookModle.volumeInfo!.authors![0] ?? '',
              ),
              const SizedBox(
                height: 15,
              ),
              BookRating(
                rating: bookModle.volumeInfo!.avergerating,
              ),
              const TakingAction(),
              const Expanded(
                child: SizedBox(
                  height: 20,
                ),
              ),
              const HorzantilBookListview(),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        )
      ],
    );
  }
}
