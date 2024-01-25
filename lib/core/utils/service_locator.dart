import 'package:book/core/utils/api_service.dart';
import 'package:book/features/home/data/repos/home_repo_implementation.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupGetIt() {
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      apiservice: ApiService(
        Dio(),
      ),
    ),
  );
}