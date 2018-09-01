import 'package:flutter/material.dart';

import './tasklist/view.dart';

class Application extends StatelessWidget {
  Application({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'todoapp-mvp',
        theme: ThemeData(
            primarySwatch: Colors.indigo,
            scaffoldBackgroundColor: Colors.white),
        home: TaskList(appBarTitle: 'todoapp-mvp'));
  }
}
