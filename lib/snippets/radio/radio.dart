import 'package:flutter/material.dart';

enum _SingingCharacter { lafayette, jefferson }

class SnippetRadio extends StatefulWidget {

  @override
  _SnippetRadioState createState() => _SnippetRadioState();
}

class _SnippetRadioState extends State<SnippetRadio> {
  _SingingCharacter _character = _SingingCharacter.lafayette;

  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            title: const Text('Lafayette'),
            leading: Radio(
              value: _SingingCharacter.lafayette,
              groupValue: _character,
              onChanged: (_SingingCharacter value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Thomas Jefferson'),
            leading: Radio(
              value: _SingingCharacter.jefferson,
              groupValue: _character,
              onChanged: (_SingingCharacter value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
