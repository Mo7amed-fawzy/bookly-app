import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'similar_books_cubit_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksCubitInitial());

  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksCubitLoading());

    var result = await homeRepo.fetchSimilarBooks(
        category: category); // بجيب البيانات من الريبو

    result.fold(
      (failure) {
        emit(SimilarBooksCubitFailure(failure.errMessage));
      },
      (books) {
        emit(SimilarBooksCubitSuccess(books));
      },
    );
  }
}
