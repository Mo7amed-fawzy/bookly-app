import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutercoursetwo/features/home/data/models/book_model.dart';
import 'package:flutercoursetwo/features/home/data/repos/home_repo.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    print('Fetching books..ضصقصثقثقصثقصثقثقضص.');

    emit(FeaturedBooksLoading());

    var result = await homeRepo.fetchFeaturedBooks(); // بجيب البيانات من الريبو

    result.fold(
      (failure) {
        print('Failed to fetch books: ${failure.errMessage}');

        emit(FeaturedBooksFailure(failure.errMessage));
      },
      (books) {
        print('Fetched ${books.length} books');

        emit(FeaturedBooksSuccess(books));
      },
    );
  }
}
