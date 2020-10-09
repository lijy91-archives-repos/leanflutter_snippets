import 'package:flutter/material.dart';

class SnippetRangeSlider extends StatefulWidget {
  @override
  _SnippetRangeSliderState createState() => _SnippetRangeSliderState();
}

class _SnippetRangeSliderState extends State<SnippetRangeSlider> {
  double _starValue = 10;
  double _endValue = 80;

  @override
  Widget build(BuildContext context) {
    return RangeSlider(
      values: RangeValues(_starValue, _endValue),
      min: 0.0,
      max: 100.0,
      onChanged: (values) {
        setState(() {
          _starValue = values.start.roundToDouble();
          _endValue = values.end.roundToDouble();
        });
      },
    );
  }
}
