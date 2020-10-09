import 'package:flutter/material.dart';

class SnippetAnimatedSize extends StatefulWidget {
  @override
  _SnippetAnimatedSizeState createState() => _SnippetAnimatedSizeState();
}

class _SnippetAnimatedSizeState extends State<SnippetAnimatedSize>
    with TickerProviderStateMixin {
  bool _first = true;

  double _width = 200;
  double _height = 200;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 300,
          child: Center(
            child: AnimatedSize(
              duration: const Duration(milliseconds: 500),
              curve: Curves.fastOutSlowIn,
              child: Container(
                width: _width,
                height: _height,
                color: Colors.blue,
              ),
              vsync: this,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
          child: const Text('CLICK ME!'),
          onPressed: () {
            setState(() {
              _width = _first ? 220 : 200;
              _height = _first ? 160 : 200;

              _first = !_first;
            });
          },
        ),
      ],
    );
  }
}
