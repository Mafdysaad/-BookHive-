import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 15,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 25,
        ),
        Text('4.8',
            style: GoogleFonts.aBeeZee()
                .copyWith(fontSize: 20, fontWeight: FontWeight.bold)),
        const Opacity(
          opacity: .5,
          child: Text('(123\$)',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              )),
        ),
      ],
    );
  }
}
