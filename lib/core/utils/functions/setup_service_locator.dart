import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:movie_app/core/utils/api_service.dart';
import 'package:movie_app/features/home/data/data_sources/home_local_data_source.dart';
import 'package:movie_app/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:movie_app/features/home/data/repos/home_repo_impl.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );

  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      homeLocalDataSource: HomeLocalDataSourceImpl(),
      homeRemoteDataSource: HomeRemoteDataSourceImpl(
        getIt.get<ApiService>(),
      ),
    ),
  );
}
