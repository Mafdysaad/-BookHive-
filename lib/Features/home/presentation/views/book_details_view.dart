import 'package:booklyapp/Features/home/Data/models/book_model/book_modle.dart';
import 'package:booklyapp/Features/home/presentation/view_models/featrued_book_cubit/home_book_cubit.dart';
import 'package:booklyapp/Features/home/presentation/views/widget/book_details_view_body.dart';

import 'package:booklyapp/Features/home/presentation/views/widget/custom_actions_book_details.dart';
import 'package:booklyapp/Features/home/presentation/views/widget/custom_leading_details_view.dart';

import 'package:flutter/material.dart';

class BookeDetailsView extends StatelessWidget {
  const BookeDetailsView({super.key, required this.bookModle});
  final BookModle bookModle;

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
      body: BookDetailsViewBody(bookModle: bookModle),
    );
  }
}
