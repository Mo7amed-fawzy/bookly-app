import 'package:flutercoursetwo/core/utils/app_router.dart';
import 'package:flutercoursetwo/features/splash/presentation/views/widgets/opacity_splash_logo.dart';
import 'package:flutercoursetwo/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  late Animation<double> opacityAnimation = 0 as Animation<double>;

  @override
  void initState() {
    super.initState();
    //single responsibility principle

    threeSDuration();
    initSlidingAnimation();
    initOpacityAnimation();

    navigateToHome();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        OpacitySplashLogo(opacityAnimation: opacityAnimation),
        const SizedBox(
          height: 4,
        ),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void threeSDuration() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    animationController.forward();
  }

  void initSlidingAnimation() {
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 3), end: Offset.zero)
            .animate(animationController);
  }

  void initOpacityAnimation() {
    opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: animationController, curve: Curves.easeIn));
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 4),
        () // بعمل كاش مره وحده واعيد استخدامه
        {
      //   Get.to(
      //     () => const HomeView(),
      //     transition: Transition.fade,
      //     duration: KTransitionDuration,);
      if (mounted) {
        // دي تبع كلاس State وبتتاكد الستات الحاليه لسا متصله بالويدجن تريي ولا لا State (الكلام دا قبل استخدام BuildContext )
        // هنا استعمالها بتتعامل مع العمليات غير المتزامنة والممكن تستمر لفترة اطول بعد التخلص من الـ State (2 Duration)
        GoRouter.of(context).push(AppRouter.kHomeView);
      }
    });
  }
}
