import 'package:booklyapp/Features/home/presentation/view_models/featrued_book_cubit/home_book_cubit.dart';
import 'package:booklyapp/Features/home/presentation/views/widget/custom_gridview.dart';
import 'package:booklyapp/Features/home/presentation/views/widget/custom_textformfield.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverFillRemaining(
          hasScrollBody: true,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(10),
                child: CustomTextformfield(),
              ),
              Expanded(
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                    child: BlocBuilder<HomeCubit, HomeState>(
                        builder: (context, state) {
                      if (state is SuccesState) {
                        return CustomGridview(
                          books: state.books,
                        );
                      } else if (state is LodingState) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      } else if (state is FailureState) {
                        return Text(state.massage);
                      } else {
                        return const Text('oops something went wrong!!');
                      }
                    })),
              ),
            ],
          ))
    ]);
  }
}
