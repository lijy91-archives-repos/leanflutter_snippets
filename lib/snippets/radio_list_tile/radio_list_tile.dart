import 'package:flutter/material.dart';

enum _SingingCharacter { lafayette, jefferson }

class SnippetRadioListTile extends StatefulWidget {
  @override
  _SnippetRadioListTileState createState() => _SnippetRadioListTileState();
}

class _SnippetRadioListTileState extends State<SnippetRadioListTile> {
  _SingingCharacter _character = _SingingCharacter.lafayette;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        RadioListTile<_SingingCharacter>(
          title: const Text('Lafayette'),
          value: _SingingCharacter.lafayette,
          groupValue: _character,
          onChanged: (_SingingCharacter value) {
            setState(() {
              _character = value;
            });
          },
        ),
        RadioListTile<_SingingCharacter>(
          title: const Text('Thomas Jefferson'),
          value: _SingingCharacter.jefferson,
          groupValue: _character,
          onChanged: (_SingingCharacter value) {
            setState(() {
              _character = value;
            });
          },
        ),
      ],
    );
  }
}
