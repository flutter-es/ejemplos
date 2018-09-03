import 'package:flutter/material.dart';

import '../../data/task.dart';

typedef OnTaskCallback(Task task);

class TaskWidget extends StatefulWidget {
  final Task task;
  final OnTaskCallback onUpdateTask;
  final OnTaskCallback onTaskCallback;

  const TaskWidget(
      {Key key,
      @required this.task,
      @required this.onUpdateTask,
      @required this.onTaskCallback})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  bool _checkboxVal;

  @override
  void initState() {
    super.initState();
    _checkboxVal = widget.task.done;
  }

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.only(left: 0.0, right: 0.0, top: 10.0, bottom: 10.0),
      onPressed: () {
        widget.onTaskCallback(widget.task);
      },
      child: Row(
        children: <Widget>[
          Checkbox(
            value: _checkboxVal,
            onChanged: (bool value) {
              setState(() {
                _checkboxVal = value;
              });

              widget.onUpdateTask(widget.task..done = value);
            },
          ),
          Text(widget.task.shortDescription,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
