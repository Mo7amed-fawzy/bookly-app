import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 40,
          child: IconButton(
            padding: EdgeInsets.zero, // بشيل البادنج الديفولت
            // constraints: BoxConstraints(), // بشيل الكونسترانز الاضافيه علي الحجم
            alignment: Alignment.centerLeft,
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        Expanded(
          child: SizedBox(
            width: 40,
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: buildOutlineInputBorder(),
                focusedBorder: buildOutlineInputBorder(),
                hintText: 'search',
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Opacity(
                    opacity: .8,
                    child: Icon(
                      FontAwesomeIcons.magnifyingGlass,
                      size: 24,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
