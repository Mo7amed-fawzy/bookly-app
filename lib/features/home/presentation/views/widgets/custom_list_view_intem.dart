import 'package:flutercoursetwo/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      // الويدجيت ظبطت ابعاد الكونتانر بناءا علي الويدث بتاع السايزدبكوس
      aspectRatio: 2.7 / 4,
      // width / hight
      child: Container(
        // width: 100,
        // height: MediaQuery.of(context).size.height * .25,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.red,
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                AssetsData.testImage1,
              ),
            )),
      ),
    );
  }
}
