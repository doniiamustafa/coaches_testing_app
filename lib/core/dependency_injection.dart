import 'dart:developer';

import 'package:coaches_app_testing_code/core/app_service_client.dart';
import 'package:coaches_app_testing_code/core/dio_factory.dart';
import 'package:coaches_app_testing_code/features/training_series/data/data_source/remote_data_source_impl.dart';
import 'package:coaches_app_testing_code/features/training_series/data/repository_impl/training_series_repo_impl.dart';
import 'package:coaches_app_testing_code/features/training_series/domain/usecases/training_series_usecases.dart';
import 'package:coaches_app_testing_code/features/training_series/presentation/bloc/overview_bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final instance = GetIt.instance;

Future<void> initApp() async {
  log("initApp");
  // dio factory
  instance.registerLazySingleton<DioFactory>(() => DioFactory());

  // app service client
  Dio dio = await instance<DioFactory>().getDio();

  if (!GetIt.I.isRegistered<AppServiceClient>()) {
    instance.registerLazySingleton<AppServiceClient>(
      () => AppServiceClient(dio),
    );
  }
}

initTrainingSeriesScreen() {
  log("initHome");

  // data source
  if (!GetIt.I.isRegistered<TrainingSeriesRemoteDataSourceImpl>()) {
    instance.registerLazySingleton<TrainingSeriesRemoteDataSourceImpl>(
      () => TrainingSeriesRemoteDataSourceImpl(instance<AppServiceClient>()),
    );
  }

  // repository
  if (!GetIt.I.isRegistered<TrainingSeriesRepoImpl>()) {
    instance.registerLazySingleton<TrainingSeriesRepoImpl>(
      () => TrainingSeriesRepoImpl(
        instance<TrainingSeriesRemoteDataSourceImpl>(),
      ),
    );
  }

  // usecases
  if (!GetIt.I.isRegistered<TrainingSeriesUseCase>()) {
    instance.registerFactory<TrainingSeriesUseCase>(
      () => TrainingSeriesUseCase(
        instance<TrainingSeriesRepoImpl>(),
      ),
    );
  }

  //bloc
  if (!GetIt.I.isRegistered<OverviewBloc>()) {
    instance.registerFactory<OverviewBloc>(
      () => OverviewBloc(
        trainingSeriesUseCase: instance<TrainingSeriesUseCase>(),
      ),
    );
  }
}
