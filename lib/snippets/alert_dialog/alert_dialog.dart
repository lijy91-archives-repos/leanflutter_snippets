import 'package:flutter/material.dart';

class SnippetAlertDialog extends StatefulWidget {
  @override
  _SnippetAlertDialogState createState() => _SnippetAlertDialogState();
}

class _SnippetAlertDialogState extends State<SnippetAlertDialog> {
  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 1)).then((_) {
      _neverSatisfied();
    });
    super.initState();
  }

  Future<void> _neverSatisfied() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Rewind and remember'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('You will never be satisfied.'),
                Text('You\’re like me. I’m never satisfied.'),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Regret'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        _neverSatisfied();
      },
      child: Text(
        "CLICK ME!",
      ),
    );
  }
}
