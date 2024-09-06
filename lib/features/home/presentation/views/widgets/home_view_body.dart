import 'package:flutercoursetwo/core/utils/assets.dart';
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
          BestSallerListViewItem(),
        ],
      ),
    );
  }
}

class BestSallerListViewItem extends StatelessWidget {
  const BestSallerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            // الويدجيت ظبطت ابعاد الكونتانر بناءا علي الويدث بتاع السايزدبكوس
            aspectRatio: 2.5 / 4,
            // width / hight
            child: Container(
              // width: 100,
              // height: MediaQuery.of(context).size.height * .25,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.red,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      AssetsData.testImage1,
                    ),
                  )),
            ),
          ),
          Column(
            children: [],
          ),
        ],
      ),
    );
  }
}
