import 'package:flutter/material.dart';

class SnippetDraggable extends StatefulWidget {
  @override
  _SnippetDraggableState createState() => _SnippetDraggableState();
}

class _SnippetDraggableState extends State<SnippetDraggable> {
  double xPosition = 0;
  double yPosition = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double _width = 100;
    double _height = 100;

    return Stack(
      children: <Widget>[
        Positioned(
          top: yPosition,
          left: xPosition,
          child: GestureDetector(
            onPanUpdate: (tapInfo) {
              setState(() {
                xPosition += tapInfo.delta.dx;
                yPosition += tapInfo.delta.dy;
              });
            },
            child: Container(
              width: 150,
              height: 150,
              color: Colors.red,
            ),
          ),
        ),
      ],
    );
  }
}
