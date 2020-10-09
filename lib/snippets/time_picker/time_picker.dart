import 'package:flutter/material.dart';

class SnippetTimePicker extends StatefulWidget {
  @override
  _SnippetTimePickerState createState() => _SnippetTimePickerState();
}

class _SnippetTimePickerState extends State<SnippetTimePicker> {
  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 1)).then((_) {
      _handleClickMe();
    });
    super.initState();
  }

  Future<void> _handleClickMe() async {
    showTimePicker(
      initialTime: TimeOfDay.now(),
      context: context,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        _handleClickMe();
      },
      child: Text(
        "CLICK ME!",
      ),
    );
  }
}
