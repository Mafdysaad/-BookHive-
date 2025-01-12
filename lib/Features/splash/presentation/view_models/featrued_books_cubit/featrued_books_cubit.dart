import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'featch_cubit_state.dart';

class FeatchCubitCubit extends Cubit<FeatchCubitState> {
  FeatchCubitCubit() : super(FeatchCubitInitial());
}
