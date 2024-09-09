import 'package:flutercoursetwo/core/utils/styles.dart';
import 'package:flutercoursetwo/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:flutercoursetwo/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutercoursetwo/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    // بشكل عام بتعمل نسيتيد سكرولفيو لكل الصفحه شكلها جامد
    return const CustomScrollView(
      // دي لاي حاجه عاوزها تسكرول هوريزونتالي
      slivers: [
        // هنا مينفعش احط ويدجتس لازم احط سليفر فهحط البروبيرتي دي
        SliverToBoxAdapter(
            child: Column(
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
            // BestSellerListView(),
          ],
        )),
        // SliverFillRemaining(
        //   // بالسليفر دا بقولو التشايلد دا هيملا الجزء الفاضل فبكدا بياكسباند عادي اقدر احط اكسبانديد
        //   child:
        BestSellerListView(), // في مشكلة اني مش عاوز يعمل 2 سكرول فهنزل احط شوية اتربيوتس
        // ),
      ],
    );
  }
}
