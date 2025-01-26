part of 'home_book_cubit.dart';

sealed class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

final class HomeCubitInitial extends HomeState {}

final class LodingState extends HomeState {}

final class FailureState extends HomeState {
  final String massage;
  const FailureState(this.massage);
}

final class SuccesState extends HomeState {
  final List<BookModle> books;
  const SuccesState(this.books);
}
