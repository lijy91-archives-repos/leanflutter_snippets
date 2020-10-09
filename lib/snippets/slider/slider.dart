import 'package:flutter/material.dart';

class SnippetSlider extends StatefulWidget {
  @override
  _SnippetSliderState createState() => _SnippetSliderState();
}

class _SnippetSliderState extends State<SnippetSlider> {
  double _progress = 0;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _progress,
      label: '$_progress',
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
