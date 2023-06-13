import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:w3school_clone/data/lessons_css.dart';
import 'package:w3school_clone/data/saved.dart';
import 'package:w3school_clone/model/lesson_html.dart';
import 'package:w3school_clone/pages/html_lesson.dart';
import 'package:w3school_clone/utils/navigation.dart';

import '../data/lessons.dart';

class LessonScreen extends StatefulWidget {
  final String title;

  const LessonScreen({super.key, required this.title});

  @override
  State<LessonScreen> createState() => _LessonScreenState();
}

class _LessonScreenState extends State<LessonScreen> {
  int lessonIndex = 0;

  int lessonLen = 0;

  @override
  Widget build(BuildContext context) {
    if (widget.title == "HTML") {
      lessonLen = lessonsHtml.length - 1;
    } else if (widget.title == "CSS") {
      lessonLen = lessonCss.length - 1;
    } else if (widget.title == "JavaScript") {
      lessonLen = lessonsJs.length - 1;
    } else if (widget.title == "Python") {
      lessonLen = lessonsPython.length - 1;
    } else if (widget.title == "C++") {
      lessonLen = lessonsCpp.length - 1;
    }
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          children: [
            Text(widget.title),
            const Spacer(),
            Text("Lesson $lessonIndex/$lessonLen"),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                if (widget.title == "HTML") {
                  if (!savedHtmlsIndex.contains(lessonIndex)) {
                    savedHtmlsIndex.add(lessonIndex);
                  } else {
                    savedHtmlsIndex.remove(lessonIndex);
                  }
                } else {
                  if (!savedCssIndex.contains(lessonIndex)) {
                    savedCssIndex.add(lessonIndex);
                  } else {
                    savedCssIndex.remove(lessonIndex);
                  }
                }
              });
            },
            icon: getIconState(),
          )
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (widget.title == "HTML")
                LessonHtml(
                    lessonText: lessonsHtml[lessonIndex].lessonText,
                    lessonCode: lessonsHtml[lessonIndex].lessonCode),
              if (widget.title == "CSS")
                LessonHtml(
                    lessonText: lessonCss[lessonIndex].lessonText,
                    lessonCode: lessonCss[lessonIndex].lessonCode),
              if (widget.title == "JavaScript")
                LessonHtml(
                    lessonText: lessonsJs[lessonIndex].lessonText,
                    lessonCode: lessonsJs[lessonIndex].lessonCode),
              if (widget.title == "Python")
                LessonHtml(
                    lessonText: lessonsPython[lessonIndex].lessonText,
                    lessonCode: lessonsPython[lessonIndex].lessonCode),
              if (widget.title == "C++")
                LessonHtml(
                    lessonText: lessonsCpp[lessonIndex].lessonText,
                    lessonCode: lessonsCpp[lessonIndex].lessonCode),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                width: double.infinity,
                child: CupertinoButton(
                  color: Colors.green,
                  onPressed: () {
                    if (widget.title == "HTML") {
                      openCodeEditor(context, lessonsHtml[lessonIndex]);
                    } else if (widget.title == "JavaScript") {
                      openCodeEditor(context, lessonsJs[lessonIndex]);
                    } else if (widget.title == "Python") {
                      openCodeEditor(context, lessonsPython[lessonIndex]);
                    } else if (widget.title == "C++") {
                      openCodeEditor(context, lessonsCpp[lessonIndex]);
                    } else {
                      openCodeEditor(context, lessonCss[lessonIndex]);
                    }
                  },
                  child: const Text("Try it yourself"),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CupertinoButton(
                      onPressed: () {
                        setState(() {
                          lessonIndex--;
                        });
                      },
                      child: Visibility(
                        visible: lessonIndex != 0,
                        child: Row(
                          children: const [
                            Icon(Icons.chevron_left),
                            Text("Previous"),
                          ],
                        ),
                      )),
                  Visibility(
                    visible: lessonIndex != lessonLen,
                    child: CupertinoButton(
                        onPressed: () {
                          setState(() {
                            lessonIndex++;
                          });
                        },
                        child: Row(
                          children: const [
                            Text("Next"),
                            Icon(Icons.chevron_right)
                          ],
                        )),
                  )
                ],
              )
            ],
          ),
        ),
      )),
    );
  }

  Icon getIconState() {
    if (widget.title == "HTML") {
      if (savedHtmlsIndex.contains(lessonIndex)) {
        return const Icon(CupertinoIcons.bookmark_fill, color: Colors.green);
      } else {
        return const Icon(CupertinoIcons.bookmark);
      }
    } else {
      if (savedCssIndex.contains(lessonIndex)) {
        return const Icon(
          CupertinoIcons.bookmark_fill,
          color: Colors.green,
        );
      } else {
        return const Icon(CupertinoIcons.bookmark);
      }
    }
  }
}

class SingleLessonScreen extends StatefulWidget {
  final String title;
  final String code;
  final String text;

  const SingleLessonScreen(
      {super.key, required this.title, required this.code, required this.text});

  @override
  State<SingleLessonScreen> createState() => _SingleLessonScreenState();
}

class _SingleLessonScreenState extends State<SingleLessonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LessonHtml(lessonText: widget.text, lessonCode: widget.code),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                width: double.infinity,
                child: CupertinoButton(
                  color: Colors.green,
                  onPressed: () {
                    if (widget.title == "HTML") {
                      openCodeEditor(
                          context,
                          LessonHtmlModel(
                              lessonCode: widget.code,
                              lessonText: widget.text));
                    } else {
                      openCodeEditor(
                          context,
                          LessonHtmlModel(
                              lessonCode: widget.code,
                              lessonText: widget.text));
                    }
                  },
                  child: const Text("Try it yourself"),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
