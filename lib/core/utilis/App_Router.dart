// ignore_for_file: file_names

import 'package:go_router/go_router.dart';

import '../../features/first_bge/presentation/views/First_Page_View.dart';
import '../../features/home/presentation/views/Book_Details_view.dart';
import '../../features/home/presentation/views/Home_views.dart';
import '../../features/search/presentation/views/Search_view.dart';
import '../../features/splash/presentation/views/Splash_View.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kFirstPageView = '/firstPageView';
  static const kSearchView = '/searchView';
  static const kBookDetailsView = '/bookdetailsview';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kFirstPageView,
        builder: (context, state) => const First_Page_View(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => const Book_Details_View(),
      ),
    ],
  );
}
