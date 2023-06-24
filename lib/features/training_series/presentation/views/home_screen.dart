import 'package:coaches_app_testing_code/config/app_routes.dart';
import 'package:coaches_app_testing_code/config/app_strings.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        onPressed: () =>
            Navigator.pushNamed(context, AppRoutes.trainingSeriesRoute),
        child: const Text(AppStrings.trainingSeries),
      )),
    );
  }
}
