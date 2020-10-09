import 'package:flutter/material.dart';

class SnippetGestureDetector extends StatefulWidget {
  @override
  _SnippetGestureDetectorState createState() => _SnippetGestureDetectorState();
}

class _SnippetGestureDetectorState extends State<SnippetGestureDetector> {
  bool _lights = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _lights = true;
        });
      },
      child: Container(
        color: _lights ? Colors.yellow : Colors.grey,
        child: Text('TURN LIGHTS ${_lights ? 'ON' : 'OFF'}'),
      ),
    );
  }
}
