import 'package:coaches_app_testing_code/features/training_series/domain/repository/training_series_repository.dart';
import 'package:dartz/dartz.dart';

class TrainingSeriesUseCase {
  final TrainingSeriesRepository _repository;
  TrainingSeriesUseCase(this._repository);

  Future<Either<void, Map<String, dynamic>>> call() async {
    return await _repository.getOverviewData();
  }
}
