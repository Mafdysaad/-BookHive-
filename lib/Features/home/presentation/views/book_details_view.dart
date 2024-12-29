import 'package:booklyapp/Features/home/presentation/views/widget/book_details_view_body.dart';
import 'package:booklyapp/Features/home/presentation/views/widget/custom_Avatar.dart';
import 'package:booklyapp/Features/home/presentation/views/widget/custom_actions_book_details.dart';
import 'package:booklyapp/Features/home/presentation/views/widget/custom_leading_details_view.dart';

import 'package:booklyapp/core/utils/assets.dart';
import 'package:booklyapp/core/utils/fontstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BookeDetailsView extends StatelessWidget {
  const BookeDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> icons = [
      Assets.resourceImagesAbout,
      Assets.resourceImagesReloade,
      Assets.resourceImagesLogout
    ];
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        leadingWidth: double.infinity,
        backgroundColor: const Color(0xFF7968FF),
        leading: const CustomLeadingBookDetails(),
        actions: const [CustomActionsBookDetails()],
      ),
      body: const BookDetailsViewBody(),
    );
  }
}
