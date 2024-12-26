import 'package:booklyapp/core/utils/assets.dart';
import 'package:flutter/material.dart';

class book_cover extends StatelessWidget {
  const book_cover({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .25,
      child: AspectRatio(
        aspectRatio: 3 / 4,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(20),
              image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(Assets.resourceImagesLongwalk))),
        ),
      ),
    );
  }
}
