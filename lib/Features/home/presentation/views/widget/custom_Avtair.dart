import 'package:booklyapp/core/utils/assets.dart';
import 'package:booklyapp/core/utils/fontstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAvtair extends StatelessWidget {
  const CustomAvtair({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 70,
      decoration: ShapeDecoration(
        image: const DecorationImage(
          image: AssetImage(Assets.resourceImagesMafdy),
          fit: BoxFit.fill,
        ),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFFBFBFF)),
          borderRadius: BorderRadius.circular(85.50),
        ),
      ),
    );
  }
}
