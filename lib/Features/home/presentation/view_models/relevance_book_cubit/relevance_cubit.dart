import 'package:booklyapp/Features/home/Data/models/book_model/book_modle.dart';
import 'package:booklyapp/Features/home/Data/repo/homerepoimplmantion.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'relevance_state.dart';

class RelevanceCubitCubit extends Cubit<RelevanceCubitState> {
  Homerepoimplmantion homerepoimplmantion;

  RelevanceCubitCubit(this.homerepoimplmantion)
      : super(RelevanceInitialState());
  Future<void> getrelevanc(String categories) async {
    emit(RelevanceLodingState());
    var respon = await homerepoimplmantion.relatedBook(categories: categories);
    respon.fold((error) => emit(RelevanceFailuerState(error.toString())),
        (books) => emit(RelevanceSuccessState(books)));
  }
}
