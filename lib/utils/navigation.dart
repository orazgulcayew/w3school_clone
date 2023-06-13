import 'package:flutter/material.dart';
import 'package:w3school_clone/model/lesson_html.dart';
import 'package:w3school_clone/pages/code_editor.dart';
import 'package:w3school_clone/pages/lesson.dart';

import '../pages/html_code_result.dart';

Future<void> openLesson(BuildContext context, String title) async {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => LessonScreen(
        title: title,
      ),
    ),
  );
}

Future<void> openCodeEditor(
    BuildContext context, LessonHtmlModel lessonHtml) async {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (ctx) => CodeEditorScreen(initialCode: lessonHtml.lessonCode),
    ),
  );
}

Future<void> openHtmlResult(BuildContext context, String code) async {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => HtmlCodeResult(
        code: code,
      ),
    ),
  );
}
