abstract class OverviewStates {}

class OverviewIntialState extends OverviewStates {}

class OverviewLoadingState extends OverviewStates {}

class OverviewSuccessState extends OverviewStates {
  Map<String, dynamic> overviewData;
  OverviewSuccessState({required this.overviewData});
}

class OverviewFailureState extends OverviewStates {}
