import 'package:flutercoursetwo/constants.dart';
import 'package:flutercoursetwo/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return GetMaterialApp(
    return MaterialApp.router(
      routerConfig: AppRouter.myroutes, // بخليه يدخل عليطول علي السبلاش
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        // بعمل نسخه من الستايل دا بس بعدل شوية قيم
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
    );
  }
}

// home: const SplashView(),

