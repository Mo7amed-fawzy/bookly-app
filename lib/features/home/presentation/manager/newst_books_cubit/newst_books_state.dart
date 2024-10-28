part of 'newst_books_cubit.dart';

class NewstBooksState extends Equatable {
  const NewstBooksState();

  @override
  List<Object> get props => [];
}

class NewstBooksInitial extends NewstBooksState {}

class NewstBooksLoading extends NewstBooksState {}

class NewstBooksSuccess extends NewstBooksState {
  final List<BookModel> books;

  const NewstBooksSuccess(this.books);
}

class NewstBooksFailure extends NewstBooksState {
  final String errMessage;

  const NewstBooksFailure(this.errMessage);
}
