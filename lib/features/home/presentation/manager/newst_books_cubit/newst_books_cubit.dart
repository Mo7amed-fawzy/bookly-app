import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutercoursetwo/features/home/data/models/book_model.dart';
import 'package:flutercoursetwo/features/home/data/repos/home_repo.dart';

part 'newst_books_state.dart';

class NewstBooksCubit extends Cubit<NewstBooksState> {
  NewstBooksCubit(this.homeRepo) : super(NewstBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(NewstBooksLoading());
    var result = await homeRepo.fetchNewsetBooks();

    result.fold((failure) {
      print('Failed to fetch books: ${failure.errMessage}');

      emit(NewstBooksFailure(failure.errMessage));
    }, (books) // ددي حالة الساكسيس
        {
      print('Fetched ${books.length} books');

      emit(NewstBooksSuccess(books));
    });
  }
}
