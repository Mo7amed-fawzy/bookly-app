import 'package:flutercoursetwo/core/utils/styles.dart';
import 'package:flutercoursetwo/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutercoursetwo/features/home/presentation/views/widgets/box_action.dart';
import 'package:flutercoursetwo/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/cupertino.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          // امته استخدم قيمه ثابته وامته استخدم قيمه ريلاتف للويدث او الهايت
          // لما اكون عاوز احافظ علي الشكل ذات نفسه ولما اكون محفتاجها بحيث العناصر متبعدش عن بعض وانا عاوزهم جمب بعض
          padding: EdgeInsets.symmetric(horizontal: width * .17),
          child: const CustomBookImage(
            imageUrl:
                'https://cdn.britannica.com/84/73184-050-05ED59CB/Sunflower-field-Fargo-North-Dakota.jpg',
          ),
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
        const SizedBox(
          height: 18,
        ),
        const BookRating(
          rating: 5,
          count: 250,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(height: 30),
        const BooksAction(),
      ],
    );
  }
}
