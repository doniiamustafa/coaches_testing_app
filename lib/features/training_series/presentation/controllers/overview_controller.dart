import 'package:coaches_app_testing_code/features/training_series/presentation/bloc/overview_bloc.dart';
import 'package:coaches_app_testing_code/features/training_series/presentation/bloc/overview_events.dart';

class OverviewController {
  final OverviewBloc overviewBloc;
  OverviewController({required this.overviewBloc});

  void getData() {
    overviewBloc.add(GetOverviewDataEvent());
  }
}
