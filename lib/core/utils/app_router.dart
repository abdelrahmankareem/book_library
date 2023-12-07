import 'package:book/features/authenteication/presentation/views/login_page.dart';
import 'package:book/features/authenteication/presentation/views/register_page.dart';
import 'package:book/features/home/presentations/views/home_view.dart';
import 'package:book/features/splash/presentations/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kRegisterView = '/RegisterView';
  static const kLoginView = '/LoginView';
  static const kHomeview = '/HomeView';
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
    ],
  );
}
