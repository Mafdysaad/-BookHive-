import 'package:booklyapp/Features/home/Data/models/book_model/book_modle.dart';
import 'package:booklyapp/Features/home/presentation/view_models/relevance_book_cubit/relevance_cubit.dart';

import 'package:booklyapp/Features/home/presentation/views/widget/book_details_view_body.dart';

import 'package:booklyapp/Features/home/presentation/views/widget/custom_actions_book_details.dart';
import 'package:booklyapp/Features/home/presentation/views/widget/custom_leading_details_view.dart';
import 'package:booklyapp/Features/home/presentation/views/widget/custom_textformfield.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookeDetailsView extends StatefulWidget {
  const BookeDetailsView({super.key, required this.bookModle});
  final BookModle bookModle;

  @override
  State<BookeDetailsView> createState() => _BookeDetailsViewState();
}

class _BookeDetailsViewState extends State<BookeDetailsView> {
  @override
  void initState() {
    BlocProvider.of<RelevanceCubitCubit>(context)
        .getrelevanc(widget.bookModle.volumeInfo!.categories?[0] ?? bookname);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        leadingWidth: double.infinity,
        backgroundColor: const Color(0xFF7968FF),
        leading: const CustomLeadingBookDetails(),
        actions: const [CustomActionsBookDetails()],
      ),
      body: BookDetailsViewBody(bookModle: widget.bookModle),
    );
  }
}
