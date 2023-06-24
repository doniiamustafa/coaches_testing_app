import 'package:coaches_app_testing_code/core/dependency_injection.dart';
import 'package:coaches_app_testing_code/features/training_series/presentation/bloc/overview_bloc.dart';
import 'package:coaches_app_testing_code/features/training_series/presentation/views/home_screen.dart';
import 'package:coaches_app_testing_code/features/training_series/presentation/views/main_training_series_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRoutes {
  static const String trainingSeriesRoute = "/trainingSeriesRoute";
  static const String homeRoute = "/homeRoute";

}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.trainingSeriesRoute:
        initTrainingSeriesScreen();
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                create: (context) => instance<OverviewBloc>(),
                child: const TrainingSeriesScreen()));
      case AppRoutes.homeRoute:
        return MaterialPageRoute(
            builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
    }
  }
}
