import 'package:flutter/cupertino.dart';

export './cupertino_page_scaffold_dark_mode.dart';

class SnippetCupertinoPageScaffold extends StatefulWidget {
  @override
  _SnippetCupertinoPageScaffoldState createState() =>
      _SnippetCupertinoPageScaffoldState();
}

class _SnippetCupertinoPageScaffoldState
    extends State<SnippetCupertinoPageScaffold> {
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: CupertinoNavigationBarBackButton(
          previousPageTitle: 'Home',
          onPressed: () {},
        ),
        middle: const Text('Sample'),
      ),
      child: Center(
        child: Text('Hello!'),
      ),
    );
  }
}
