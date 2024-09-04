import 'package:flutter/cupertino.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      // هنا بعمل حاجه شبه الستات مناجمنت
      animation: slidingAnimation,
      builder: (context, _) {
        // بحط الويدجت كدا لاننا مش هنستخدمها
        return SlideTransition(
          position: slidingAnimation,
          child: const Text(
            'Read Free Books',
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}
