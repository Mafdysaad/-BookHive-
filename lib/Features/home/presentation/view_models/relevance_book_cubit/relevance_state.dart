part of 'relevance_cubit.dart';

sealed class RelevanceCubitState extends Equatable {
  const RelevanceCubitState();

  @override
  List<Object> get props => [];
}

final class InitialState extends RelevanceCubitState {}

final class LodingState extends RelevanceCubitState {}

final class SuccessState extends RelevanceCubitState {
  final List<BookModle> books;
  const SuccessState(this.books);
}

final class RelevanceCubitFailure extends RelevanceCubitState {
  final String massage;
  const RelevanceCubitFailure(this.massage);
}
