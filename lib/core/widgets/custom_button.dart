import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backGroundColor,
    required this.textColor,
    required this.text,
    this.borderRadios,
    this.fontSize,
    this.onPressed,
  });

  final String text;
  final Color backGroundColor;
  final Color textColor;
  final BorderRadius? borderRadios; // بعمل قيمه ديفولت
  final double? fontSize;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          // backgroundColor: backGroundColor,
          backgroundColor: WidgetStateProperty.all(backGroundColor),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: borderRadios ?? BorderRadius.circular(16),
            ),
            // shape: RoundedRectangleBorder(
            //   borderRadius: borderRadios ??
            //       BorderRadius.circular(16), // null check operator
            // ), // بقولو لو جاتلك قيمه ليها استخدمها مجاتش استخدم البوردر راديوس بتعتي
          ),
        ),
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(
            color: textColor,
            fontWeight: FontWeight.w900,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}

// if not found radios use shape to make borderradios 
// دا مثال علي ويدجت بتعمل بيها بوردر راديوس

// ClipRRect(
//   borderRadius: BorderRadius.circular(20.0), 
//   child: Image.network(
//     'https://example.com/image.jpg',
//     fit: BoxFit.cover,
//   ),
// )
