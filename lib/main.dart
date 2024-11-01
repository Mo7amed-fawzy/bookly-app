import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/manager/newst_books_cubit/newst_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupDependencyInjection();

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode
      .immersiveSticky); // لو حابب اخليه يختفي علطول SystemUiMode.leanBack

  // لو حبيت اخفي الناف بار
  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky, overlays: [SystemUiOverlay.top]);

  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return GetMaterialApp(
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(getIt.get<HomeReopImpl>())
            ..fetchFeaturedBooks(), // تأكد من استدعاء fetchFeaturedBooks عند إنشاء الـ Cubit
        ),
        BlocProvider(
          create: (context) => NewstBooksCubit(
            getIt.get<HomeReopImpl>(),
          )..fetchNewsetBooks(),
        ),
        // BlocProvider(
        //   create: (context) =>
        //       ImageLoadingCubit()..loadData(), // إضافة ImageLoadingCubit هنا
        // ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.myroutes, // بخليه يدخل عليطول علي السبلاش
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          // بعمل نسخه من الستايل دا بس بعدل شوية قيم
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}

// home: const SplashView(),
