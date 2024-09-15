import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutercoursetwo/features/home/data/models/book_model.dart';

part 'newst_books_state.dart';

class NewstBooksCubit extends Cubit<NewstBooksState> {
  NewstBooksCubit() : super(NewstBooksInitial());
}
