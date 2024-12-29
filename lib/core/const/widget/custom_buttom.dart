import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color? Backgroundcolor;
  final BorderRadius? borderRadius;
  const CustomButton(
      {super.key,
      required this.text,
      required this.Backgroundcolor,
      this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          style: TextButton.styleFrom(
              elevation: 30,
              backgroundColor: Backgroundcolor,
              shape: RoundedRectangleBorder(
                borderRadius: borderRadius ??
                    BorderRadius.circular(
                      12,
                    ),
              )),
          onPressed: () {},
          child: Text(
            text,
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
          )),
    );
  }
}
