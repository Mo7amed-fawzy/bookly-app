import 'package:flutercoursetwo/core/widgets/custom_error_widget.dart';
import 'package:flutercoursetwo/core/widgets/custom_loading_indicator.dart';
import 'package:flutercoursetwo/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutercoursetwo/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureBoxListView extends StatelessWidget {
  const FeatureBoxListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        print('الحالة الحاااليه من الفيتشرد بووكس: $state');

        if (state is FeaturedBooksSuccess) {
          return Padding(
            padding: const EdgeInsets.only(left: 22),
            child: Column(
              // mainAxisSize:
              //     MainAxisSize.min, //عشان تضمن ان الكولمن ياخد مساحة العنصر فقط
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .3,
                  child: ListView.builder(
                    physics:
                        const BouncingScrollPhysics(), // بتخلي السكرول بيطلع لبرا بشكل جامد
                    itemCount: state.books.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: CustomBookImage(
                          imageUrl: state
                              .books[index].volumeInfo.imageLinks.thumbnail,
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 50),
              ],
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndicator(); //عاوز اعمل تريجر للريكويست بتاعي عشان اجيب بيانات من قاعدة بيانات اعملو منين؟
        }
      },
    );
  }
}
