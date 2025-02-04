part of 'home_book_cubit.dart';

sealed class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

final class HomeCubitInitial extends HomeState {}

final class FeatchLodingState extends HomeState {}

final class FeatchFailureState extends HomeState {
  final String massage;
  const FeatchFailureState(this.massage);
}

final class FeatchSuccesState extends HomeState {
  final List<BookModle> books;
  const FeatchSuccesState(this.books);
}
