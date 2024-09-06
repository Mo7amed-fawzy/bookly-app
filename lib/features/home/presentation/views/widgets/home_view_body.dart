import 'package:flutercoursetwo/core/utils/styles.dart';
import 'package:flutercoursetwo/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutercoursetwo/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    const CustomAppBar();
    const FeatureBoxListView();

    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // CustomListViewItem(),
          SizedBox(
            height: 50,
          ),
          Text(
            'best saller',
            style: Styles.titleMedium,
          ),
        ],
      ),
    );
  }
}
