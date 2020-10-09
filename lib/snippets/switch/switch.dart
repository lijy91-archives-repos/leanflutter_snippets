import 'package:flutter/material.dart';

class SnippetSwitch extends StatefulWidget {
  @override
  _SnippetSwitchState createState() => _SnippetSwitchState();
}

class _SnippetSwitchState extends State<SnippetSwitch> {
  bool _value = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: _value,
      onChanged: (bool newValue) {
        setState(() {
          _value = newValue;
        });
      },
    );
  }
}
