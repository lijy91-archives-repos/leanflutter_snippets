import 'package:flutter/cupertino.dart';

class SnippetCupertinoTabBarDarkMode extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SnippetCupertinoTabBarDarkModeState();
}

class _SnippetCupertinoTabBarDarkModeState
    extends State<SnippetCupertinoTabBarDarkMode> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: const CupertinoThemeData(
        brightness: Brightness.dark,
      ),
      home: CupertinoPageScaffold(
        child: Center(
          child: CupertinoTabBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.circle),
                title: Text('Tab 1'),
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.add),
                title: Text('Tab 2'),
              ),
            ],
            currentIndex: 1,
          ),
        ),
      ),
    );
  }
}
