import 'package:book/features/authenteication/presentation/views/login_page.dart';
import 'package:book/features/authenteication/presentation/views/register_page.dart';
import 'package:book/features/home/presentations/views/book_details_view.dart';
import 'package:book/features/home/presentations/views/home_view.dart';
import 'package:book/features/search/presentation/view/search_view.dart';
import 'package:book/features/splash/presentations/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kRegisterView = '/registerView';
  static const kLoginView = '/loginView';
  static const kHomeview = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kLoginView,
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: kRegisterView,
        builder: (context, state) => const RegisterPage(),
      ),
      GoRoute(
        path: kHomeview,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
