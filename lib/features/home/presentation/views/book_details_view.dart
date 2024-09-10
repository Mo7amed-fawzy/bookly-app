import 'package:flutercoursetwo/features/home/presentation/views/widgets/custom_book_detalis_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailView extends StatelessWidget {
  const BookDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: CustomBookDetailAppBar(),
        ),
      ],
    );
  }
}
