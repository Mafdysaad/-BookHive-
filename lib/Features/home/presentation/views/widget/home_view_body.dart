import 'package:booklyapp/Features/home/presentation/views/widget/custom_gridview.dart';
import 'package:booklyapp/Features/home/presentation/views/widget/custom_textformfield.dart';

import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(slivers: [
      SliverFillRemaining(
          hasScrollBody: true,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: CustomTextformfield(),
              ),
              Expanded(
                child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                    child: CustomGridview()),
              ),
            ],
          ))
    ]);
  }
}
