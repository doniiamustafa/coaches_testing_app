import 'package:flutter/material.dart';

class CoachProfileWidget extends StatelessWidget {
  String name;
  String title;
  String description;
  String photoPath;
  CoachProfileWidget({
    super.key,
    required this.name,
    required this.title,
    required this.description,
    required this.photoPath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
                radius: MediaQuery.of(context).size.width * 0.15,
                backgroundImage: NetworkImage(photoPath)),
            SizedBox(
              width: MediaQuery.of(context).size.height * 0.04,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),
                Text(name),
              ],
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(description),
        ),
      ],
    );
  }
}
