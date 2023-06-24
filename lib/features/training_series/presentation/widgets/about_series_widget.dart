import 'package:coaches_app_testing_code/config/app_strings.dart';
import 'package:flutter/material.dart';

class AboutTheSeriesWidget extends StatelessWidget {
  String aboutSeries;
  AboutTheSeriesWidget({super.key, required this.aboutSeries});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.aboutSeries.toUpperCase(),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            aboutSeries,
            style: const TextStyle(overflow: TextOverflow.fade),
          ),
        ],
      ),
    );
  }
}
