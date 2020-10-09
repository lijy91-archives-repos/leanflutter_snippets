import 'package:flutter/cupertino.dart';

export './cupertino_timer_picker_dark_mode.dart';

class SnippetCupertinoTimerPicker extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SnippetCupertinoTimerPickerState();
}

class _SnippetCupertinoTimerPickerState
    extends State<SnippetCupertinoTimerPicker> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: CupertinoTimerPicker(
        mode: CupertinoTimerPickerMode.hms,
        onTimerDurationChanged: (value) {},
      ),
    );
  }
}
