import 'package:flutercoursetwo/features/home/data/models/book_model.dart';
import 'package:flutercoursetwo/features/home/presentation/views/widgets/books_details_section.dart';
import 'package:flutercoursetwo/features/home/presentation/views/widgets/custom_book_detalis_app_bar.dart';
import 'package:flutercoursetwo/features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// احنا مثبتين البريفكس مع اسم الفايل واسم الويدجت فالتسميه الوهو هنا فيو
class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.currentbook});

  final BookModel currentbook;
  @override
  Widget build(BuildContext context) {
    // هستعمل حاجه ريلاتف للويدث
    // عشان تحافظلي علي الويدث

    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          // علشان الكوستومسكرولفيو بتسكرول عادي فلما تنزل لجوا مش لازم تبقي سكرولابل
          hasScrollBody: false,
          // بقلو املا الفراغات
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            // child: SingleChildScrollView(
            // دي بتشرنك بتاخد زي الكولمن لما بقولو مايناكسسالايمنت دوت مين بيشرنك حولين التشلدرن بتوعو
            // وحاطط فنفس الوقت اكسبانديد ويدجيت فكدا بقولو خد التقدر عليه والتانيه بتقولو عايزك تشرينك

            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomBookDetailAppBar(),
                BookDetailsSection(
                  bookdetails: currentbook,
                ),

                const Expanded(
                    child: SizedBox(
                  height: 30,
                )),
                const SimilarBoosksSection(),
                // const SizedBox(height: 40),
              ],
            ),
          ),
        )
      ],
    );
  }
}
