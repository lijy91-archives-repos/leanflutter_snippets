import 'package:flutter/cupertino.dart';

export './cupertino_button_dark_mode.dart';

class SnippetCupertinoButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        CupertinoButton(
          child: Text('Button'),
          onPressed: () { /** */ },
        ),
        CupertinoButton.filled(
          child: Text('Button'),
          onPressed: () { /** */ },
        ),
      ],
    );
  }
}

