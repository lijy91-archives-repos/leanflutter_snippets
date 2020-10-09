import 'package:flutter/material.dart';

class SnippetDropdownButton extends StatefulWidget {
  @override
  _SnippetDropdownButtonState createState() => _SnippetDropdownButtonState();
}

class _SnippetDropdownButtonState extends State<SnippetDropdownButton> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownButton<String>(
          value: dropdownValue,
          onChanged: (String newValue) {
            setState(() {
              dropdownValue = newValue;
            });
          },
          items: <String>['One', 'Two', 'Free', 'Four']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
