import 'package:flutercoursetwo/core/utils/styles.dart';
import 'package:flutercoursetwo/features/home/presentation/views/widgets/custom_book_detalis_app_bar.dart';
import 'package:flutercoursetwo/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

// احنا مثبتين البريفكس مع اسم الفايل واسم الويدجت فالتسميه الوهو هنا فيو
class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

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
          ),
          const SizedBox(
            height: 43,
          ),
          Text('The Jungle Book',
              style: Styles.textStyle30.copyWith(fontWeight: FontWeight.normal
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
        ],
      ),
    );
  }
}
