import 'package:flutter/material.dart';

import './includes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'leanflutter_snippets',
      routes: routes,
      home: HomePage(),
    );
  }
}
