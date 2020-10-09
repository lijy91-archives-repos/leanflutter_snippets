import 'package:flutter/material.dart';

class SnippetIconButton extends StatefulWidget {
  @override
  _SnippetIconButtonState createState() => _SnippetIconButtonState();
}

class _SnippetIconButtonState extends State<SnippetIconButton> {
  double _volume = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.volume_up),
              tooltip: 'Increase volume by 10',
              onPressed: () {
                setState(() {
                  _volume += 10;
                });
              },
            ),
            Text('Volume : $_volume')
          ],
        ),
      ),
    );
  }
}
