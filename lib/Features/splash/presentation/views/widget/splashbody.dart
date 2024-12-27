import 'package:booklyapp/Features/splash/presentation/views/widget/slidingtext.dart';

import 'package:booklyapp/core/utils/assets.dart';
import 'package:booklyapp/functions/functions.dart';
import 'package:flutter/material.dart';

class Splashbody extends StatefulWidget {
  const Splashbody({super.key});

  @override
  State<Splashbody> createState() => _SplashbodyState();
}

class _SplashbodyState extends State<Splashbody>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Offset> textanimation;
  @override
  void initState() {
    initslidingAnimation();
    super.initState();
    transition(context);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(Assets.resourceImagesBookly),
          SlidingText(textanimation: textanimation)
        ],
      ),
    );
  }

  void initslidingAnimation() {
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..forward();
    textanimation = Tween<Offset>(begin: const Offset(0, 20), end: Offset.zero)
        .animate(controller);
  }
}
