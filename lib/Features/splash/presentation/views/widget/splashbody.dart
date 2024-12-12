import 'package:booklyapp/constants/constdata.dart';
import 'package:booklyapp/core/utils/assets.dart';
import 'package:flutter/material.dart';

class Splashbody extends StatelessWidget {
  const Splashbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.center,
          end: Alignment.center,
          colors: Constdata.backgroundcolor,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [Image.asset(Assets.resourceImagesBookly)],
      ),
    );
  }
}
