import 'package:flutter/material.dart';

class SnippetAnimatedCrossFade extends StatefulWidget {
  @override
  _SnippetAnimatedCrossFadeState createState() =>
      _SnippetAnimatedCrossFadeState();
}

class _SnippetAnimatedCrossFadeState extends State<SnippetAnimatedCrossFade>
    with SingleTickerProviderStateMixin {
  bool _first = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        AnimatedCrossFade(
          duration: const Duration(seconds: 3),
          firstChild: const FlutterLogo(
              style: FlutterLogoStyle.horizontal, size: 100.0),
          secondChild:
              const FlutterLogo(style: FlutterLogoStyle.stacked, size: 100.0),
          crossFadeState:
              _first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        ),
        FlatButton(
          onPressed: () {
            setState(() {
              _first = !_first;
            });
          },
          child: Text(
            "CLICK ME!",
          ),
        )
      ],
    );
  }
}
