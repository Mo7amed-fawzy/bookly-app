import 'package:flutercoursetwo/core/utils/assets.dart';
import 'package:flutter/material.dart';

class OpacitySplashLogo extends StatelessWidget {
  const OpacitySplashLogo({
    super.key,
    required this.opacityAnimation,
  });

  final Animation<double> opacityAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: opacityAnimation,
      builder: (context, child) {
        return Opacity(
          opacity: opacityAnimation.value,
          child: Image.asset(AssetsData.logo),
        );
      },
    );
  }
}
