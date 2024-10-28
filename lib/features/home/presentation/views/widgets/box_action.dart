import 'package:bookly/core/functions/launch_url.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.booktourl});

  final BookModel booktourl;
  // يفضل لما تيجي تستقبل الداتا استقبلها وهي معمولها انكابسولاشن يعني كلها محطوطه فاوبجكت واحد علشان مش كل شوية ارح اغير فالداتا البستقبلها
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
              child: CustomButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('this book already in your purchase'),
                ),
              );
            },
            text: 'free',
            backGroundColor: Colors.white,
            textColor: Colors.black,
            borderRadios: const BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
          )),
          Expanded(
            child: CustomButton(
              onPressed: () {
                launchCustomUrl(context, booktourl.volumeInfo.previewLink!);
              },
              text: getText(booktourl),
              backGroundColor: const Color(0xffEF8262),
              textColor: Colors.white,
              borderRadios: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  String getText(BookModel booktourl) {
    if (booktourl.volumeInfo.previewLink == null) {
      return 'not available';
    } else {
      return 'free preview';
    }
  }
}
