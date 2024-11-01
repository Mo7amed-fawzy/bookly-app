// import 'package:flutercoursetwo/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(
            height: 16,
          ),
          Text(
            'Search Results',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverPadding(
          padding: EdgeInsets.symmetric(vertical: 10),
          // sliver: SliverList(
          //   delegate: SliverChildBuilderDelegate(
          //     (context, index) => const BookListViewItem(
          //       padding: EdgeInsets.only(left: 0, top: 5),
          //       bookModel: volum,
          //     ),
          //     childCount: 10,
          //   ),
          // ),
        ),
      ],
    );
  }
}



// class SearchResultListView extends StatelessWidget {
//   const SearchResultListView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SliverList(
//       delegate: SliverChildBuilderDelegate(
//         childCount: 10,
//         (context, index) {
//           return const Padding(
//             padding: EdgeInsets.symmetric(vertical: 10),
//             child: BookSliverListItem(),
//           );
//         },
//       ),
//     );
//   }
// }
