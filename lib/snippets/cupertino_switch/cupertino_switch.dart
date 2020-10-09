import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SnippetCupertinoSwitch extends StatefulWidget {
  @override
  _SnippetCupertinoSwitchState createState() => _SnippetCupertinoSwitchState();
}

class _SnippetCupertinoSwitchState extends State<SnippetCupertinoSwitch> {
  bool _lights = true;

  @override
  Widget build(BuildContext context) {
    return MergeSemantics(
      child: ListTile(
        title: Text('Lights'),
        trailing: CupertinoSwitch(
          value: _lights,
          onChanged: (bool value) { setState(() { _lights = value; }); },
        ),
        onTap: () { setState(() { _lights = !_lights; }); },
      ),
    );
  }
}
