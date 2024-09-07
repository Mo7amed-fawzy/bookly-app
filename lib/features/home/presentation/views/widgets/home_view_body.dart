import 'package:flutercoursetwo/core/utils/assets.dart';
import 'package:flutercoursetwo/core/utils/styles.dart';
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
          padding: EdgeInsets.only(left: 24, bottom: 20),
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

class BestSallerListViewItem extends StatelessWidget {
  const BestSallerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.red,
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      AssetsData.testImage1,
                    ),
                  ),
                ),
              ),
            ),
            Column(
              children: [],
            ),
          ],
        ),
      ),
    );
  }
}
