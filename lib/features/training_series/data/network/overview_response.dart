import 'package:json_annotation/json_annotation.dart';

part 'overview_response.g.dart';

@JsonSerializable()
class OverviewResponse {
  @JsonKey(name: "overview")
  Map<String, dynamic> overviewData;

  OverviewResponse(this.overviewData);

  factory OverviewResponse.fromJson(Map<String, dynamic> json) =>
      _$OverviewResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OverviewResponseToJson(this);
}
