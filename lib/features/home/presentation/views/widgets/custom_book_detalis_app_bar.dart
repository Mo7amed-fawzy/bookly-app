import 'package:flutter/material.dart';

class CustomBookDetailAppBar extends StatelessWidget {
  const CustomBookDetailAppBar({super.key});
// لو لااختلاف في البيانات استعمل نفس الويدجت لكن لو الاختلاف فالمسافات مستعملهاش تاني
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.close),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_cart_outlined),
        ),
      ],
    );
  }
}
