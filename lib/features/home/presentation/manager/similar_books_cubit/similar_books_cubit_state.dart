part of 'similar_books_cubit_cubit.dart';

class SimilarBooksState {
  const SimilarBooksState();

  List<Object> get props => [];
}

class SimilarBooksCubitInitial extends SimilarBooksState {}

class SimilarBooksCubitFailure extends SimilarBooksState {
  final String errMessage;

  const SimilarBooksCubitFailure(this.errMessage);
}

class SimilarBooksCubitSuccess extends SimilarBooksState {
  final List<BookModel> books;

  const SimilarBooksCubitSuccess(this.books);
}

class SimilarBooksCubitLoading extends SimilarBooksState {}
