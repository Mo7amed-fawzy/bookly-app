// import 'package:flutercoursetwo/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageUrl});

  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      // الويدجيت ظبطت ابعاد الكونتانر بناءا علي الويدث بتاع السايزدبكوس
      aspectRatio: 2.7 / 4,
      // width / hight
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            // color: Colors.red,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                imageUrl,
              ),
            )),
      ),
    );
  }
}
