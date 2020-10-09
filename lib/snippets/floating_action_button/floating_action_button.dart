import 'package:flutter/material.dart';

class SnippetFloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        // Add your onPressed code here!
      },
      child: Icon(Icons.thumb_up),
      backgroundColor: Colors.pink,
    );
  }
}
