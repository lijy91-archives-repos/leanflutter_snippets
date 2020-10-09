import 'package:flutter/material.dart';

class SnippetButtonBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      children: <Widget>[
        FlatButton(
          child: Text('Ok'),
          color: Colors.blue,
          onPressed: () {/** */},
        ),
        FlatButton(
          child: Text('Cancel'),
          color: Colors.blue,
          onPressed: () {/** */},
        ),
      ],
    );
  }
}
