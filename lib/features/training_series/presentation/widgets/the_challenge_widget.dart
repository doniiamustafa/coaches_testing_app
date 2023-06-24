import 'package:coaches_app_testing_code/config/app_strings.dart';
import 'package:flutter/material.dart';

class TheChallengeWidget extends StatelessWidget {
  const TheChallengeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              AppStrings.challenge.toUpperCase(),
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  letterSpacing: 1.5),
            ),
            const SizedBox(
              height: 14,
            ),
            const Text(
              AppStrings.coachName,
              style: TextStyle(fontWeight: FontWeight.w400, letterSpacing: 1.5),
            ),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 14.0),
                  child: Text(
                    AppStrings.startPracticing.toUpperCase(),
                    style: const TextStyle(letterSpacing: 1.4),
                  ),
                )),
            
          ],
        ),
      ),
    );
  }
}
