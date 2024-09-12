import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
      // fillColor: Colors.white,
      // filled: true,
      enabledBorder: BuildOutlineInputBorder(),
      focusedBorder: BuildOutlineInputBorder(),
      hintText: 'search',
      suffixIcon: IconButton(
          onPressed: () {},
          icon: const Opacity(
            opacity: .8,
            child: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 24,
            ),
          )),
    ));
  }

  OutlineInputBorder BuildOutlineInputBorder() {
    return OutlineInputBorder(
        // بفعل نوع من انواع البوردر
        borderSide: const BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(12));
  }
}
