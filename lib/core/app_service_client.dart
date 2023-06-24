import 'package:coaches_app_testing_code/config/app_constant.dart';
import 'package:coaches_app_testing_code/core/api_end_point.dart';
import 'package:coaches_app_testing_code/features/training_series/data/network/overview_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'app_service_client.g.dart';

@RestApi(baseUrl: AppConstants.baseUrl)
abstract class AppServiceClient {
  factory AppServiceClient(Dio dio, {String baseUrl}) = _AppServiceClient;

  @GET(ApiEndPoints.overviewEndPoint)
  Future<OverviewResponse> getOverviewData();
}
