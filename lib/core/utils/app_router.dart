import 'package:flutercoursetwo/features/home/presentation/views/book_details_view.dart';
import 'package:flutercoursetwo/features/home/presentation/views/home_view.dart';
import 'package:flutercoursetwo/features/search/presentation/views/search_view.dart';
import 'package:flutercoursetwo/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/BookDetailsView';
  static const kSearchView = '/searchView';

  static final myroutes = GoRouter(
    routes: [
      GoRoute(
        path: '/', // نقطة البداية
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kSearchView, // نقطة البداية
        builder: (context, state) => const SeacrchView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => const BookDetailView(),
      ),
    ],
  );
}
