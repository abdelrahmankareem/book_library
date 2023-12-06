import 'package:book/features/authenteication/presentation/views/login_page.dart';
import 'package:book/features/authenteication/presentation/views/register_page.dart';
import 'package:book/features/splash/presentations/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kRegisterView = '/RegisterView';
  static const kLoginView = '/LoginView';
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
    ],
  );
}
