import 'package:flutter/material.dart';

class LessonHtml extends StatelessWidget {
  const LessonHtml(
      {super.key, required this.lessonText, required this.lessonCode});
  final String lessonText;
  final String lessonCode;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: Text(
            lessonText,
            style: const TextStyle(fontSize: 16),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        const Text(
          "Example",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 4,
        ),
        SizedBox(
          width: double.infinity,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                lessonCode,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
