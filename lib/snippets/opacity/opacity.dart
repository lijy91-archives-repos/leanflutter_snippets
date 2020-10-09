import 'package:flutter/material.dart';

class SnippetOpacity extends StatefulWidget {
  @override
  _SnippetOpacityState createState() => _SnippetOpacityState();
}

class _SnippetOpacityState extends State<SnippetOpacity> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Opacity(
          opacity: _visible ? 1.0 : 0.0,
          child: const Text('Now you see me, now you don\'t!'),
        ),
        FlatButton(
          onPressed: () {
            setState(() {
              _visible = !_visible;
            });
          },
          child: Text(
            "CLICK ME!",
          ),
        )
      ],
    );
  }
}
