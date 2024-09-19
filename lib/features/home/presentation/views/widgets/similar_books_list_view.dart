import 'package:flutercoursetwo/core/widgets/custom_error_widget.dart';
import 'package:flutercoursetwo/core/widgets/custom_loading_indicator.dart';
import 'package:flutercoursetwo/features/home/presentation/manager/similar_books_cubit/similar_books_cubit_cubit.dart';
import 'package:flutercoursetwo/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksCubitSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: CustomBookImage(
                    imageUrl:
                        'https://cdn.britannica.com/84/73184-050-05ED59CB/Sunflower-field-Fargo-North-Dakota.jpg',
                  ),
                );
              },
            ),
          );
        } else if (state is SimilarBooksCubitFailure) {
          return CustomErrorWidget(
            errorMessage: state.errMessage,
          );
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
