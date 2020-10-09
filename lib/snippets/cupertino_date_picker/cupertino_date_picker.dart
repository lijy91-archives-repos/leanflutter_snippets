import 'package:flutter/cupertino.dart';

export './cupertino_date_picker_dark_mode.dart';

class SnippetCupertinoDatePicker extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SnippetCupertinoDatePickerState();
}

class _SnippetCupertinoDatePickerState
    extends State<SnippetCupertinoDatePicker> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: CupertinoDatePicker(
          mode: CupertinoDatePickerMode.dateAndTime,
          onDateTimeChanged: (dateTime) {}),
    );
  }
}
