import 'package:book/core/utils/service_locator.dart';
import 'package:book/features/authenteication/presentation/views/login_page.dart';
import 'package:book/features/authenteication/presentation/views/register_page.dart';
import 'package:book/features/home/data/models/book_model/book_model.dart';
import 'package:book/features/home/data/repos/home_repo_implementation.dart';
import 'package:book/features/home/presentations/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:book/features/home/presentations/views/book_details_view.dart';
import 'package:book/features/home/presentations/views/home_view.dart';
import 'package:book/features/search/data/repos/search_repo_impel.dart';
import 'package:book/features/search/presentation/manger/search_cubit/search_cubit.dart';

import 'package:book/features/search/presentation/view/search_view.dart';
import 'package:book/features/splash/presentations/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kRegisterView = '/registerView';
  static const kLoginView = '/loginView';
  static const kHomeview = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView/:bookName';
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
      GoRoute(path: kHomeview, builder: (context, state) => const HomeView()),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
          child: BookDetailsView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => BlocProvider(
          create: (context) => SearchCubit(getIt.get<SearchRepoImpel>()),
          child: SearchView(bookName: state.extra as String),
        ),
      ),
    ],
  );
}
