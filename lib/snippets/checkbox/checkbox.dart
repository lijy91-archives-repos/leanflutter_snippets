import 'package:flutter/material.dart';

class SnippetCheckbox extends StatefulWidget {
  @override
  _SnippetCheckboxState createState() => _SnippetCheckboxState();
}

class _SnippetCheckboxState extends State<SnippetCheckbox> {
  bool _value = true;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: _value,
      onChanged: (bool newValue) {
        setState(() {
          _value = newValue;
        });
      },
    );
  }
}
