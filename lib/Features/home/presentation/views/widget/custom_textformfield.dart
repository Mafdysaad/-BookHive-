import 'package:booklyapp/Features/home/presentation/view_models/featrued_book_cubit/home_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

String? bookname;

class CustomTextformfield extends StatelessWidget {
  CustomTextformfield({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        bookname = value;
      },
      onSubmitted: (value) {
        BlocProvider.of<HomeCubit>(context).searchbook(value);
      },
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
}

OutlineInputBorder buildOutlineInputBorder() {
  return OutlineInputBorder(
    borderSide: const BorderSide(color: Colors.black, width: 2),
    borderRadius: BorderRadius.circular(
      12,
    ),
  );
}
