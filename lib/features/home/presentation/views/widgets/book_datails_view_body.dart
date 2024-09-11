import 'package:flutercoursetwo/core/utils/styles.dart';
import 'package:flutercoursetwo/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutercoursetwo/features/home/presentation/views/widgets/box_action.dart';
import 'package:flutercoursetwo/features/home/presentation/views/widgets/custom_book_detalis_app_bar.dart';
import 'package:flutercoursetwo/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutercoursetwo/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

// احنا مثبتين البريفكس مع اسم الفايل واسم الويدجت فالتسميه الوهو هنا فيو
class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    // هستعمل حاجه ريلاتف للويدث
    // عشان تحافظلي علي الويدث
    var width = MediaQuery.of(context).size.width;

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
                Padding(
                  // امته استخدم قيمه ثابته وامته استخدم قيمه ريلاتف للويدث او الهايت
                  // لما اكون عاوز احافظ علي الشكل ذات نفسه ولما اكون محفتاجها بحيث العناصر متبعدش عن بعض وانا عاوزهم جمب بعض
                  padding: EdgeInsets.symmetric(horizontal: width * .17),
                  child: const CustomBookImage(),
                ),
                const SizedBox(
                  height: 43,
                ),
                Text('The Jungle Book',
                    style: Styles.textStyle30
                        .copyWith(fontWeight: FontWeight.normal
                            // FontWeight.bold
                            )),
                const SizedBox(
                  height: 6,
                ),
                Opacity(
                  opacity: .7,
                  child: Text('Rudyard Kipling',
                      style: Styles.textStyle18.copyWith(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500,
                      )),
                ),
                const SizedBox(
                  height: 18,
                ),
                const BookRating(
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                const SizedBox(height: 30),
                const BooksAction(),
                const Expanded(
                    child: SizedBox(
                  height: 30,
                )),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You can also like',
                    style: Styles.textStyle14.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const SimilarBooksListView(),
                // const SizedBox(height: 40),
              ],
            ),
          ),
        )
      ],
    );
  }
}
