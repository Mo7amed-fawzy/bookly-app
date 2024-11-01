import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      physics: const BouncingScrollPhysics(),
      children: const [
        CustomAppBar(),
        FeatureBoxListView(),
        Padding(
          padding: EdgeInsets.only(left: 30, bottom: 20),
          child: Text(
            'Newset Books',
            style: Styles.textStyle18,
          ),
        ),
        BestSellerListView(),
      ],
    );
  }
}
