part of 'relevance_cubit.dart';

sealed class RelevanceCubitState extends Equatable {
  const RelevanceCubitState();

  @override
  List<Object> get props => [];
}

final class RelevanceInitialState extends RelevanceCubitState {}

final class RelevanceLodingState extends RelevanceCubitState {}

final class RelevanceSuccessState extends RelevanceCubitState {
  final List<BookModle> books;

  const RelevanceSuccessState(this.books);
}

final class RelevanceFailuerState extends RelevanceCubitState {
  final String massage;
  const RelevanceFailuerState(this.massage);
}
