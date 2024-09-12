import 'package:flutercoursetwo/core/utils/styles.dart';
import 'package:flutercoursetwo/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/cupertino.dart';

class SimilarBoosksSection extends StatelessWidget {
  const SimilarBoosksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 16),
        const SimilarBooksListView(),
      ],
    );
  }
}
