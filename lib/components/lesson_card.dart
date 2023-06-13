import 'package:flutter/material.dart';
import 'package:w3school_clone/utils/navigation.dart';

class LessonCard extends StatelessWidget {
  final Color color;
  final String name;
  final String description;
  const LessonCard(
      {super.key,
      required this.color,
      required this.name,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 6),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: 240,
          height: 160,
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0, 3),
                    blurRadius: 3,
                    color: Colors.black.withOpacity(0.2))
              ]),
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Text(
                name,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                description,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  openLesson(context, name);
                },
                child: Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(48),
                    color: const Color(0xff282A35),
                  ),
                  child: Center(
                    child: Text(
                      "Learn $name",
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
