part of 'similar_books_cubit_cubit.dart';

sealed class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

final class SimilarBooksCubitInitial extends SimilarBooksState {}

final class SimilarBooksCubitFailure extends SimilarBooksState {
  final String errMessage;

  const SimilarBooksCubitFailure(this.errMessage);
}

final class SimilarBooksCubitSuccess extends SimilarBooksState {
  final List<BookModel> books;

  const SimilarBooksCubitSuccess(this.books);
}

final class SimilarBooksCubitLoading extends SimilarBooksState {}
