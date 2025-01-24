import 'package:bloc/bloc.dart';
import 'package:booklyapp/Features/home/Data/models/book_model/book_modle.dart';
import 'package:equatable/equatable.dart';

part 'featrued_books_state.dart';

class FeatchCubitCubit extends Cubit<FeatchCubitState> {
  FeatchCubitCubit() : super(FeatchCubitInitial());
}
