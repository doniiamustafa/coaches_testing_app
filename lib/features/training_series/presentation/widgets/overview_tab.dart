import 'package:coaches_app_testing_code/config/app_strings.dart';
import 'package:coaches_app_testing_code/features/training_series/presentation/bloc/overview_bloc.dart';
import 'package:coaches_app_testing_code/features/training_series/presentation/bloc/overview_states.dart';
import 'package:coaches_app_testing_code/features/training_series/presentation/controllers/overview_controller.dart';
import 'package:coaches_app_testing_code/features/training_series/presentation/widgets/about_series_widget.dart';
import 'package:coaches_app_testing_code/features/training_series/presentation/widgets/coach_profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Overviewtab extends StatefulWidget {
  const Overviewtab({super.key});

  @override
  State<Overviewtab> createState() => _OverviewtabState();
}

class _OverviewtabState extends State<Overviewtab> {
  String image = "";

  late final OverviewController overviewController;

  @override
  void initState() {
    super.initState();
    overviewController =
        OverviewController(overviewBloc: context.read<OverviewBloc>());
    overviewController.getData();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OverviewBloc, OverviewStates>(
        listener: (context, state) {
      //?? if we need to listen for a specific state to do something
    }, builder: (context, state) {
      if (state is OverviewSuccessState) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AboutTheSeriesWidget(
                aboutSeries: state.overviewData["aboutSeries"]),
            const SizedBox(
              height: 20,
            ),
            CoachProfileWidget(
                name: state.overviewData["name"],
                title: state.overviewData["title"],
                description: state.overviewData["description"],
                photoPath: state.overviewData["url"])
          ],
        );
      } else if (state is OverviewLoadingState) {
        return const Center(
          heightFactor: 14.5,
          child: CircularProgressIndicator(),
        );
      } else {
        return Container();
      }
    });
  }
}
