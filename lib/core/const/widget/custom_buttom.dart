import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color? Backgroundcolor;
  final BorderRadius? borderRadius;
  final void Function()? function;
  const CustomButton(
      {super.key,
      required this.text,
      required this.Backgroundcolor,
      required this.function,
      this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
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
          onPressed: function,
          child: Text(
            text,
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
          )),
    );
  }
}
