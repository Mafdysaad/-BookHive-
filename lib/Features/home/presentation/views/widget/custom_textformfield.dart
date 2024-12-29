import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextformfield extends StatelessWidget {
  const CustomTextformfield({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        enabled: true,
        fillColor: Colors.grey[300],
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        hintText: 'Search',
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Opacity(
            opacity: .8,
            child: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 22,
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.black, width: 2),
      borderRadius: BorderRadius.circular(
        12,
      ),
    );
  }
}
