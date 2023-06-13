import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:w3school_clone/utils/navigation.dart';

class CodeEditorScreen extends StatefulWidget {
  final String? initialCode;
  const CodeEditorScreen({super.key, this.initialCode});

  @override
  State<CodeEditorScreen> createState() => _CodeEditorScreenState();
}

class _CodeEditorScreenState extends State<CodeEditorScreen> {
  final TextEditingController _codeEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _codeEditingController.text = widget.initialCode ??
        '''<!DOCTYPE html>
<html>
  <head>
    <title></title>
  </head>
  <body>

  </body>
</html>''';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: const Text("HTML Code editor")),
      body: SafeArea(
          child: Column(
        children: [
          TextField(
            controller: _codeEditingController,
            minLines: 22,
            maxLines: 22,
            decoration: InputDecoration(
              fillColor: Colors.grey[300],
              filled: true,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
          const Spacer(),
          CupertinoButton(
              color: Colors.green,
              onPressed: () {
                openHtmlResult(context, _codeEditingController.text);
              },
              child: const Text("Result")),
          const SizedBox(
            height: 16,
          )
        ],
      )),
    );
  }
}
