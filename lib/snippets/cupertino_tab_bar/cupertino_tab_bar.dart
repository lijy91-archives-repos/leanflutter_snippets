import 'package:flutter/cupertino.dart';

export './cupertino_tab_bar_dark_mode.dart';

class SnippetCupertinoTabBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SnippetCupertinoTabBarState();
}

class _SnippetCupertinoTabBarState extends State<SnippetCupertinoTabBar> {
  @override
  Widget build(BuildContext context) {
    return Center(
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
    );
  }
}
