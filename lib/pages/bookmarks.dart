import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:w3school_clone/data/lessons.dart';
import 'package:w3school_clone/data/lessons_css.dart';
import 'package:w3school_clone/data/saved.dart';

import 'lesson.dart';

class BookmarksScreen extends StatefulWidget {
  const BookmarksScreen({super.key});

  @override
  State<BookmarksScreen> createState() => _BookmarksScreenState();
}

class _BookmarksScreenState extends State<BookmarksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bookmarks"),
      ),
      body: Visibility(
        visible: savedCssIndex.isNotEmpty || savedHtmlsIndex.isNotEmpty,
        replacement: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(24),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.green),
                child: const Icon(
                  CupertinoIcons.bookmark_fill,
                  size: 78,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "Your bookmarks is empty",
                style: TextStyle(fontSize: 16),
              )
            ],
          ),
        ),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: 1,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          itemBuilder: (context, listIndex) {
            return Column(
              children: [
                if (savedHtmlsIndex.isNotEmpty)
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Saved HTML LESSONS",
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                ...List.generate(savedHtmlsIndex.length, (index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                lessonsHtml[savedHtmlsIndex[index]].lessonText,
                                maxLines: 6,
                              ),
                              const SizedBox(
                                height: 24,
                              ),
                              CupertinoButton(
                                  color: Colors.green,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: const [
                                      Text("Go to lesson"),
                                      Icon(Icons.chevron_right)
                                    ],
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            SingleLessonScreen(
                                          title: "Lesson",
                                          code: lessonsHtml[
                                                  savedHtmlsIndex[index]]
                                              .lessonCode,
                                          text: lessonsHtml[
                                                  savedHtmlsIndex[index]]
                                              .lessonText,
                                        ),
                                      ),
                                    );
                                  })
                            ],
                          ),
                          Positioned(
                              top: 0,
                              right: 0,
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    savedHtmlsIndex
                                        .remove(savedHtmlsIndex[index]);
                                  });
                                },
                                icon: getIconState(),
                              ))
                        ],
                      ),
                    ),
                  );
                }),
                if (savedCssIndex.isNotEmpty)
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Saved CSS LESSONS",
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                ...List.generate(savedCssIndex.length, (index) {
                  return Card(
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                lessonCss[savedCssIndex[index]].lessonText,
                                maxLines: 6,
                              ),
                              const SizedBox(
                                height: 24,
                              ),
                              CupertinoButton(
                                  color: Colors.green,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: const [
                                      Text("Go to lesson"),
                                      Icon(Icons.chevron_right)
                                    ],
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            SingleLessonScreen(
                                          title: "Lesson",
                                          code: lessonCss[savedCssIndex[index]]
                                              .lessonCode,
                                          text: lessonCss[savedCssIndex[index]]
                                              .lessonText,
                                        ),
                                      ),
                                    );
                                  })
                            ],
                          ),
                        ),
                        Positioned(
                            top: 0,
                            right: 0,
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  savedCssIndex.remove(savedCssIndex[index]);
                                });
                              },
                              icon: getIconState(),
                            ))
                      ],
                    ),
                  );
                }),
              ],
            );
          },
        ),
      ),
    );
  }

  Icon getIconState() {
    return const Icon(CupertinoIcons.bookmark_fill, color: Colors.green);
  }
}
