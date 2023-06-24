import 'package:coaches_app_testing_code/features/training_series/data/network/overview_response.dart';

abstract class TrainingSeriesDataSource {
  Future<OverviewResponse> getOverviewData();
}
