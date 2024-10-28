import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem(
      {super.key,
      this.padding = const EdgeInsets.only(left: 30),
      required this.bookModel});

  final EdgeInsets padding;
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(
            AppRouter.kBookDetailsView,
            extra: bookModel,
          );
        },
        child: SizedBox(
          height: 125,
          child: Row(
            children: [
              CustomBookImage(
                  //عملية ريفاكتور
                  imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ??
                      ''), // بقولو لو مش بنل اعرض ولو بنل متحطش حاجه 'دي'
              // AspectRatio(
              //   aspectRatio: 2.5 / 4,
              //   child: Container(
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(8),
              //       color: Colors.red,
              //       image: const DecorationImage(
              //         fit: BoxFit.fill,
              //         image: AssetImage(
              //           AssetsData.testImage1,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              const SizedBox(width: 30),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width *
                          .5, //خليتو نص الويدث
                      child: Text(
                        bookModel.volumeInfo.title!,
                        maxLines: 2, // دي شبه الفلوت ليفت
                        overflow: TextOverflow.ellipsis, // ال3 نقط
                        style: Styles.textStyle20
                            .copyWith(fontFamily: kGTSectraFine),
                      ),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      bookModel.volumeInfo.authors![0],
                      style: Styles.textStyle14,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 3),
                    Row(
                      children: [
                        Text(
                          'Free',
                          style: Styles.textStyle20.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.green),
                        ),
                        // Spacer(),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .06,
                        ),
                        BookRating(
                          mainAxisAlignment: MainAxisAlignment.center,
                          rating: bookModel.volumeInfo.averageRating,
                          count: bookModel.volumeInfo.ratingsCount,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
