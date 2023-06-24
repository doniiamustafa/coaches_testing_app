

import 'package:coaches_app_testing_code/core/app_service_client.dart';
import 'package:coaches_app_testing_code/features/training_series/data/data_source/data_source.dart';
import 'package:coaches_app_testing_code/features/training_series/data/network/overview_response.dart';

class TrainingSeriesRemoteDataSourceImpl implements TrainingSeriesDataSource {
  final AppServiceClient _appServiceClient;
  TrainingSeriesRemoteDataSourceImpl(this._appServiceClient);

  @override
  Future<OverviewResponse> getOverviewData() async {
    return await _appServiceClient.getOverviewData();
  }
}
