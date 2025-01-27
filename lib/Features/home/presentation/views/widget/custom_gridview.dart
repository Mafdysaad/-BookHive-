import 'package:booklyapp/Features/home/presentation/view_models/featrued_book_cubit/home_book_cubit.dart';
import 'package:booklyapp/Features/home/presentation/views/widget/book\'s_cover.dart';
import 'package:booklyapp/Features/home/presentation/views/widget/book_titles.dart';

import 'package:booklyapp/core/utils/approutes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CustomGridview extends StatelessWidget {
  const CustomGridview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
      if (state is SuccesState) {
        return GridView.builder(
          itemCount: state.books.length,
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
                  child: BookCover(
                      url: state.books[index].volumeInfo!.imageLinks!
                          .smallThumbnail!)),
              BookTitles(
                title: state.books[index].volumeInfo!.title!,
                auther: state.books[index].volumeInfo!.authors![0],
              )
            ],
          ),
        );
      } else if (state is FailureState) {
        return Text(state.massage);
      } else {
        return const Center(child: CircularProgressIndicator());
      }
    });
  }
}
