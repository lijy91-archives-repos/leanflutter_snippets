import 'package:flutter/material.dart';

class SnippetRotatedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 3,
      child: const Text('Hello World!'),
    );
  }
}
