import 'package:flutercoursetwo/core/utils/service_locator.dart';
import 'package:flutercoursetwo/features/home/data/models/book_model.dart';
import 'package:flutercoursetwo/features/home/data/repos/home_repo_impl.dart';
import 'package:flutercoursetwo/features/home/presentation/manager/similar_books_cubit/similar_books_cubit_cubit.dart';
import 'package:flutercoursetwo/features/home/presentation/views/book_details_view.dart';
import 'package:flutercoursetwo/features/home/presentation/views/home_view.dart';
import 'package:flutercoursetwo/features/search/presentation/views/search_view.dart';
import 'package:flutercoursetwo/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(getIt.get<HomeReopImpl>()),
          // كريت لبلوك بروفايدر- وانشئ كيوبت من كونتكست-واسمه وبيبقي طالب الهوم ريبو
          // بتجيب الهوم ريبو من السيرفيز لوكيتور بتاعنا  getIt.get<HomeReopImpl>
          child: BookDetailView(
            bookModel: state.extra as BookModel,
          ),
          // الستات اقدر ابعت بيانات بيها للبوكديتالزفيو انا وبانافيجات عليها واكسترا بيانات انا باعتها
          // هبعت اوبجكت معاها بوكمودل علشان يكون متعرف عليه
          // وهروح ادي الاكسترا برضه عند عملية النافيجات نفسها
        ),
      ),
    ],
  );
}
