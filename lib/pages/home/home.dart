import 'package:flutter/material.dart';

import '../../includes.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _buildBody(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: routes.keys.toList().length,
        itemBuilder: (BuildContext context, int index) {
          String routeName = routes.keys.toList()[index];
          return ListTile(
            title: Text(routeName),
            onTap: () {
              Navigator.of(context).pushNamed('$routeName');
            },
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('leanflutter-snippets'),
      ),
      body: _buildBody(context),
    );
  }
}
