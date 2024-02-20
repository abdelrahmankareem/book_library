import 'package:book/core/utils/app_router.dart';
import 'package:book/core/utils/service_locator.dart';
import 'package:book/features/authenteication/presentation/manager/auth_cubit/authcubit.dart';
import 'package:book/features/home/data/repos/home_repo_implementation.dart';
import 'package:book/features/home/presentations/manager/Best_seller_cubit/best_seller_cubit.dart';
import 'package:book/features/home/presentations/manager/featured_books_cubit/featured_books_cubit.dart';

import 'package:book/firebase_options.dart';

import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  setupServiceLocator();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthCubit(),
        ),
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => BestSellerCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchBestSellerBooks(),
        ),
      ],
      child: MaterialApp.router(
        theme: ThemeData(textTheme: GoogleFonts.montserratTextTheme()),
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
