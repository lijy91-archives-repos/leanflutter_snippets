import 'package:flutter/cupertino.dart';

class SnippetCupertinoSlider extends StatefulWidget {
  @override
  _SnippetCupertinoSliderState createState() => _SnippetCupertinoSliderState();
}

class _SnippetCupertinoSliderState extends State<SnippetCupertinoSlider> {
  double _progress = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoSlider(
      value: _progress,
      min: 0.0,
      max: 100.0,
      onChanged: (value) {
        setState(() {
          _progress = value.roundToDouble();
        });
      },
    );
  }
}
