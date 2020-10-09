import 'package:flutter/material.dart';

class SnippetTextPropTextAlign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 412,
      alignment: Alignment.center,
      child: Wrap(
        spacing: 12,
        runSpacing: 12,
        children: <Widget>[
          _DemoBox(
            label: 'TextAlign.left',
            child: Text(
              'The quick brown fox jumps over the lazy dog',
              textAlign: TextAlign.left,
            ),
          ),
          _DemoBox(
            label: 'TextAlign.right',
            child: Text(
              'The quick brown fox jumps over the lazy dog',
              textAlign: TextAlign.right,
            ),
          ),
          _DemoBox(
            label: 'TextAlign.center',
            child: Text(
              'The quick brown fox jumps over the lazy dog',
              textAlign: TextAlign.center,
            ),
          ),
          _DemoBox(
            label: 'TextAlign.justify',
            child: Text(
              'The quick brown fox jumps over the lazy dog',
              textAlign: TextAlign.justify,
            ),
          ),
          _DemoBox(
            label: 'TextAlign.start',
            child: Text(
              'The quick brown fox jumps over the lazy dog',
              textAlign: TextAlign.start,
            ),
          ),
          _DemoBox(
            label: 'TextAlign.end',
            child: Text(
              'The quick brown fox jumps over the lazy dog',
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }
}

class _DemoBox extends StatelessWidget {
  final String label;
  final Widget child;

  const _DemoBox({Key key, this.label, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(label, style: TextStyle(fontSize: 12)),
        SizedBox(height: 2),
        Container(
          padding: EdgeInsets.all(12),
          width: 200,
          color: Colors.blue[50],
          child: child,
        )
      ],
    );
  }
}
