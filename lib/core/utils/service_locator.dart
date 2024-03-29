import 'package:book/core/utils/api_service.dart';
import 'package:book/features/home/data/repos/home_repo_implementation.dart';
import 'package:book/features/search/data/repos/search_repo_impel.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      getIt.get<ApiService>(),
    ),
  );
  getIt.registerSingleton<SearchRepoImpel>(
    SearchRepoImpel(
      getIt.get<ApiService>(),
    ),
  );
}
