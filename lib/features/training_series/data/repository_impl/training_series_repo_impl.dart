import 'dart:developer';

import 'package:coaches_app_testing_code/features/training_series/data/data_source/data_source.dart';
import 'package:coaches_app_testing_code/features/training_series/domain/repository/training_series_repository.dart';
import 'package:dartz/dartz.dart';

class TrainingSeriesRepoImpl implements TrainingSeriesRepository {
  final TrainingSeriesDataSource _trainingSeriesDataSource;
  TrainingSeriesRepoImpl(this._trainingSeriesDataSource);
  @override
  Future<Either<void, Map<String, dynamic>>> getOverviewData() async {
    try {
      final response = await _trainingSeriesDataSource.getOverviewData();
      return Right(response.overviewData);
    } catch (e) {
      log(e.toString());
      return const Left("Not found");
    }
  }
}
