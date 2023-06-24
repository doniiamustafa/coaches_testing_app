import 'package:bloc/bloc.dart';
import 'package:coaches_app_testing_code/features/training_series/domain/usecases/training_series_usecases.dart';
import 'package:coaches_app_testing_code/features/training_series/presentation/bloc/overview_events.dart';
import 'package:coaches_app_testing_code/features/training_series/presentation/bloc/overview_states.dart';

class OverviewBloc extends Bloc<OverviewEvents, OverviewStates> {
  final TrainingSeriesUseCase trainingSeriesUseCase;
  OverviewBloc({required this.trainingSeriesUseCase})
      : super(OverviewIntialState()) {
    on<GetOverviewDataEvent>((event, emit) async {
      emit(OverviewLoadingState());
      emit((await trainingSeriesUseCase.call()).fold(
          (left) => OverviewFailureState(),
          (data) => OverviewSuccessState(overviewData: data)));
    });
  }
}
