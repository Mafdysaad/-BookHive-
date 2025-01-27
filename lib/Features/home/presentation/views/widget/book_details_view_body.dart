import 'package:booklyapp/Features/home/presentation/views/widget/book\'s_cover.dart';
import 'package:booklyapp/Features/home/presentation/views/widget/book_descraption.dart';
import 'package:booklyapp/Features/home/presentation/views/widget/book_rating.dart';
import 'package:booklyapp/Features/home/presentation/views/widget/horzantil_book_listview.dart';
import 'package:booklyapp/Features/home/presentation/views/widget/taking_action.dart';
import 'package:booklyapp/core/const/widget/custom_buttom.dart';
import 'package:booklyapp/core/utils/fontstyle.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

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
                  child: const BookCover(
                      url:
                          'EgZjaHJvbWUyBggAEEUYOTIHCAEQABiABDINCAIQLhivARjHARiABDIHCAMQABiABDINCAQQLhjHARjRAxiABDIHCAUQABiABDIPCAYQABgKGIMBGLEDGIAEMgcIBxAAGIAEMgcICBAAGIAE0gEJNTIyM2owajE1qAIIsAIB')),
              const SizedBox(
                height: 20,
              ),
              const BookDescraption(),
              const SizedBox(
                height: 15,
              ),
              const BookRating(),
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
