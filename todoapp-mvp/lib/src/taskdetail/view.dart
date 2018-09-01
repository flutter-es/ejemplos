import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

import '../data/task.dart';
import './contract.dart';
import './presenter.dart';

class TaskDetailView extends StatefulWidget {
  final Task task;
  final Database db;
  final VoidCallback onTaskDeleted;

  const TaskDetailView(
      {Key key, @required this.task, @required this.db, this.onTaskDeleted})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _TaskDetailViewState(db);
}

class _TaskDetailViewState extends State<TaskDetailView>
    implements BaseTaskDetailView {
  BaseTaskDetailPresenter presenter;

  _TaskDetailViewState(Database db) {
    new TaskDetailPresenter(this, db);
  }

  @override
  void initState() {
    super.initState();
    presenter.initPresenter();
  }

  @override
  void dispose() {
    super.dispose();
    presenter.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAppBar(),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Text(
          widget.task.description,
          style: TextStyle(fontSize: 18.0),
        ),
      ),
    );
  }

  Widget createAppBar() {
    return AppBar(title: Text(widget.task.shortDescription), actions: <Widget>[
      IconButton(
          icon: Icon(Icons.delete),
          onPressed: () {
            presenter.deleteTask(widget.task);
            widget.onTaskDeleted();
            Navigator.of(context).pop();
          })
    ]);
  }

  @override
  void setPresenter(BaseTaskDetailPresenter presenter) {
    this.presenter = presenter;
  }
}
