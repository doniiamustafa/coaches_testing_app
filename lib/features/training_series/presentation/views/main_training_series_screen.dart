import 'package:coaches_app_testing_code/config/app_strings.dart';
import 'package:coaches_app_testing_code/features/training_series/presentation/widgets/overview_tab.dart';
import 'package:coaches_app_testing_code/features/training_series/presentation/widgets/the_challenge_widget.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';

class TrainingSeriesScreen extends StatelessWidget {
  const TrainingSeriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: const Text(
            AppStrings.challenge,
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            const TheChallengeWidget(),
            const SizedBox(
              height: 20.0,
            ),
            Flexible(
              child: Container(
                padding: const EdgeInsets.all(8.0),
                // color: Colors.grey[100],
                width: double.infinity,
                // height: 300,
                child: ContainedTabBarView(
                  tabs: const [
                    Text(
                      AppStrings.overview,
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      AppStrings.classes,
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      AppStrings.community,
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                  views: [
                    const Overviewtab(),
                    Container(color: Colors.green),
                    Container(color: Colors.green),
                  ],
                  onChange: (index) => print(index),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
