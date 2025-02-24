import 'package:booklyapp/Features/home/presentation/view_models/relevance_book_cubit/relevance_cubit.dart';
import 'package:booklyapp/Features/home/presentation/views/widget/book\'s_cover.dart';
import 'package:booklyapp/core/const/url.dart';
import 'package:booklyapp/core/utils/approutes.dart';

import 'package:booklyapp/core/utils/fontstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class HorzantilBookListview extends StatefulWidget {
  const HorzantilBookListview({super.key});

  @override
  State<HorzantilBookListview> createState() => _HorzantilBookListviewState();
}

class _HorzantilBookListviewState extends State<HorzantilBookListview> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text('You Can also Like ', style: Fontstyle.proxima_Bold_17),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .20,
          child: BlocBuilder<RelevanceCubitCubit, RelevanceCubitState>(
            builder: (context, state) {
              return state is RelevanceSuccessState
                  ? ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () => GoRouter.of(context).push(
                                Approutes.kBookDetails,
                                extra: state.books[index]),
                            child: BookCover(
                                url: state.books[index].volumeInfo!.imageLinks
                                        ?.smallThumbnail ??
                                    con_url.defaultimage),
                          ),
                        );
                      },
                      itemCount: 8,
                    )
                  : state is RelevanceLodingState
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : const Text('error??');
            },
          ),
        ),
      ],
    );
  }
}
