import 'package:flutter/material.dart';

class SnippetAnimatedPadding extends StatefulWidget {
  @override
  _SnippetAnimatedPaddingState createState() =>
      _SnippetAnimatedPaddingState();
}

class _SnippetAnimatedPaddingState extends State<SnippetAnimatedPadding> {
  EdgeInsets _padding = EdgeInsets.zero;
  void _changePadding() {
    setState(() {
      if (_padding.top == 100) {
        _padding = EdgeInsets.only(top: 100, bottom: 100);
      } else {
        _padding = EdgeInsets.only(left: 100, right: 100);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          height: 300.0,
          width: 300.0,
          child: AnimatedPadding(
            padding: _padding,
            curve: Curves.ease,
            duration: Duration(seconds: 1),
            child: Container(
              color: Colors.blue,
            ),
          ),
        ),
        FlatButton(
          onPressed: () {
            _changePadding();
          },
          child: Text(
            "CLICK ME!",
          ),
        )
      ],
    );
  }
}
