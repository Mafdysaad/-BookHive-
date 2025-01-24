part of 'featrued_books_cubit.dart';

sealed class FeatchCubitState extends Equatable {
  const FeatchCubitState();

  @override
  List<Object> get props => [];
}

final class FeatchCubitInitial extends FeatchCubitState {}

final class LodingState extends FeatchCubitState {}

final class FailureState extends FeatchCubitState {
  final String massage;
  const FailureState(this.massage);
}

final class SuccesState extends FeatchCubitState {
  final List<BookModle> books;
  const SuccesState(this.books);
}
