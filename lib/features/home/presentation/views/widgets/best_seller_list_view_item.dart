import 'package:flutercoursetwo/core/utils/app_router.dart';
import 'package:flutercoursetwo/core/utils/assets.dart';
import 'package:flutercoursetwo/core/utils/styles.dart';
import 'package:flutercoursetwo/constants.dart';
import 'package:flutercoursetwo/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSallerListViewItem extends StatelessWidget {
  const BestSallerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRouter.kBookDetailsView);
        },
        child: SizedBox(
          height: 125,
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 2.5 / 4,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.red,
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        AssetsData.testImage1,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width *
                          .5, //خليتو نص الويدث
                      child: Text(
                        'Harry Potter and the Goblet of Fire ',
                        maxLines: 2, // دي شبه الفلوت ليفت
                        overflow: TextOverflow.ellipsis, // ال3 نقط
                        style: Styles.textStyle20
                            .copyWith(fontFamily: kGTSectraFine),
                      ),
                    ),
                    const SizedBox(height: 3),
                    const Text(
                      'J.K. Rowling',
                      style: Styles.textStyle14,
                    ),
                    const SizedBox(height: 3),
                    Row(
                      children: [
                        Text(
                          '19.99 €',
                          style: Styles.textStyle20
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        // Spacer(),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .06,
                        ),
                        const BookRating(),
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
