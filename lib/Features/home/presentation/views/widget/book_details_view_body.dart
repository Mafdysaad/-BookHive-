import 'package:booklyapp/Features/home/Data/models/book_model/book_modle.dart';
import 'package:booklyapp/Features/home/presentation/view_models/relevance_book_cubit/relevance_cubit.dart';
import 'package:booklyapp/Features/home/presentation/views/widget/book\'s_cover.dart';
import 'package:booklyapp/Features/home/presentation/views/widget/book_descraption.dart';
import 'package:booklyapp/Features/home/presentation/views/widget/book_rating.dart';
import 'package:booklyapp/Features/home/presentation/views/widget/custom_textformfield.dart';
import 'package:booklyapp/Features/home/presentation/views/widget/horzantil_book_listview.dart';
import 'package:booklyapp/Features/home/presentation/views/widget/taking_action.dart';
import 'package:booklyapp/core/const/url.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsViewBody extends StatefulWidget {
  final BookModle bookModle;
  const BookDetailsViewBody({super.key, required this.bookModle});

  @override
  State<BookDetailsViewBody> createState() => _BookDetailsViewBodyState();
}

class _BookDetailsViewBodyState extends State<BookDetailsViewBody> {
  @override
  void initState() {
    BlocProvider.of<RelevanceCubitCubit>(context)
        .getrelevanc(widget.bookModle.volumeInfo!.categories?[0] ?? bookname);
    super.initState();
  }

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
                    url: widget.bookModle.volumeInfo!.imageLinks?.thumbnail ??
                        con_url.defaultimage,
                  )),
              const SizedBox(
                height: 20,
              ),
              BookDescraption(
                title: widget.bookModle.volumeInfo!.title ?? '',
                auther: widget.bookModle.volumeInfo!.authors?[0] ?? '',
              ),
              const SizedBox(
                height: 15,
              ),
              BookRating(
                rating: widget.bookModle.volumeInfo!.avergerating,
              ),
              TakingAction(
                bookModle: widget.bookModle,
              ),
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
