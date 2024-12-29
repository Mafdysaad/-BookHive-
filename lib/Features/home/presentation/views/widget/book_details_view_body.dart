import 'package:booklyapp/Features/home/presentation/views/widget/book\'s_cover.dart';
import 'package:booklyapp/Features/home/presentation/views/widget/book_descraption.dart';
import 'package:booklyapp/Features/home/presentation/views/widget/book_rating.dart';
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
                  child: const BookCover()),
              const SizedBox(
                height: 20,
              ),
              const BookDescraption(),
              const SizedBox(
                height: 15,
              ),
              const BookRating(),
              const Padding(
                padding: EdgeInsets.all(25),
                child: Row(
                  children: [
                    Expanded(
                      child: CustomButton(
                        text: '19.99 \$',
                        Backgroundcolor: Colors.red,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomLeft: Radius.circular(15)),
                      ),
                    ),
                    Expanded(
                      child: CustomButton(
                        text: 'Free Preview',
                        Backgroundcolor: Colors.green,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomRight: Radius.circular(15)),
                      ),
                    )
                  ],
                ),
              ),
              const Expanded(
                child: SizedBox(
                  height: 100,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .20,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, indx) {
                    return const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: BookCover(),
                    );
                  },
                  itemCount: 8,
                ),
              ),
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
