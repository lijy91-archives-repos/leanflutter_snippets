import 'package:flutter/material.dart';

class SnippetViewerPage extends StatefulWidget {
  final dynamic body;

  SnippetViewerPage(this.body);

  @override
  State<StatefulWidget> createState() => _SnippetViewerPageState();
}

class _SnippetViewerPageState extends State<SnippetViewerPage> {
  Widget _buildBody(BuildContext context) {
    return widget.body;
  }

  Widget _build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: _buildBody(context),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _build(context);
    // return WillPopScope(
    //   onWillPop: () async => false,
    //   child: _build(context),
    // );
  }
}
