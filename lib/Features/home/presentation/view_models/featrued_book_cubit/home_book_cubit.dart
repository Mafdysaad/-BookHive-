import 'package:bloc/bloc.dart';
import 'package:booklyapp/Features/home/Data/models/book_model/book_modle.dart';
import 'package:booklyapp/Features/home/Data/repo/homerepo.dart';

import 'package:equatable/equatable.dart';

part 'home_cubit_state.dart';

class HomeCubitCubit extends Cubit<HomeCubitState> {
  HomeCubitCubit(this.homerpo) : super(HomeCubitInitial());
  final repo homerpo;
  Future<void> fetchFeaturedBooks() async {
    var respons = await homerpo.FeatchBooks();
    respons.fold((error) => emit(FailureState(error.toString())),
        (books) => emit(SuccesState(books)));
  }
}
