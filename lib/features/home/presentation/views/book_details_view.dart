import 'package:flutercoursetwo/features/home/presentation/views/widgets/custom_book_detalis_app_bar.dart';
import 'package:flutercoursetwo/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailView extends StatelessWidget {
  const BookDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    // هستعمل حاجه ريلاتف للويدث
    // عشان تحافظلي علي الويدث
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        children: [
          const CustomBookDetailAppBar(),
          Padding(
            // امته استخدم قيمه ثابته وامته استخدم قيمه ريلاتف للويدث او الهايت
            // لما اكون عاوز احافظ علي الشكل ذات نفسه ولما اكون محفتاجها بحيث العناصر متبعدش عن بعض وانا عاوزهم جمب بعض
            padding: EdgeInsets.symmetric(horizontal: width * .17),
            child: const CustomBookImage(),
          )
        ],
      ),
    );
  }
}
