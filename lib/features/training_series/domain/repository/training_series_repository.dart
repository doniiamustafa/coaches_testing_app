import 'package:dartz/dartz.dart';

abstract class TrainingSeriesRepository {
  Future<Either<void, Map<String, dynamic>>> getOverviewData();
}
