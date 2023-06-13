import 'package:flutter/material.dart';

import '../components/lesson_card.dart';
import '../components/video_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> names = ["HTML", "CSS", "JavaScript", "Python", "C++"];
    final List<String> descriptions = [
      "The language for building web pages",
      "The language for styling web pages",
      "The language for programming web pages",
      "A popular programming language",
      "A programming language"
    ];
    final List<int> colors = [
      0xffD9EEE1,
      0xffFFF4A3,
      0xffF3ECEA,
      0xff96D4D4,
      0xffC7DACF
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Learn")),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              color: const Color(0xff282A35),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Column(
                children: [
                  const Text(
                    "Start coding",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    "Easy way to learn coding",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color(0xffFFC0C7)),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 24),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(48)),
                        suffixIcon: const Icon(
                          Icons.search,
                          color: Colors.green,
                        ),
                        hintText: "Search our tutorials..."),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Text(
                "Lessons",
                style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    names.length,
                    (index) => LessonCard(
                          color: Color(colors[index]),
                          name: names[index],
                          description: descriptions[index],
                        )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Text(
                "Video lessons",
                style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  names.length,
                  (index) {
                    return VideoCard(
                      color: Color(colors[index]),
                      name: names[index],
                      description: descriptions[index],
                    );
                  },
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
