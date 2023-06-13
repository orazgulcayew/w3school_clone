import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class HtmlCodeResult extends StatelessWidget {
  final String code;
  const HtmlCodeResult({super.key, required this.code});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Result"),
      ),
      body: SafeArea(child: Html(data: code)),
    );
  }
}
