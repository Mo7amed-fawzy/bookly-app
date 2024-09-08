import 'package:flutercoursetwo/core/utils/styles.dart';
import 'package:flutercoursetwo/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutercoursetwo/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutercoursetwo/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        FeatureBoxListView(),
        Padding(
          padding: EdgeInsets.only(left: 30, bottom: 20),
          child: Text(
            'Best seller',
            style: Styles.textStyle18,
          ),
        ),
        BestSallerListViewItem(),
      ],
    );
  }
}
