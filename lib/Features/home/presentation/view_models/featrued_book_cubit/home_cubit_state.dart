part of 'home_book_cubit.dart';

sealed class HomeCubitState extends Equatable {
  const HomeCubitState();

  @override
  List<Object> get props => [];
}

final class HomeCubitInitial extends HomeCubitState {}

final class LodingState extends HomeCubitState {}

final class FailureState extends HomeCubitState {
  final String massage;
  const FailureState(this.massage);
}

final class SuccesState extends HomeCubitState {
  final List<BookModle> books;
  const SuccesState(this.books);
}
