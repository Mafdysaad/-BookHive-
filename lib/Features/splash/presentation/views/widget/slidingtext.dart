import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.textanimation,
  });

  final Animation<Offset> textanimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: textanimation,
      builder: (context, child) {
        return SlideTransition(
            position: textanimation,
            child: const Text(
              'Read Free Books',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ));
      },
    );
  }
}
