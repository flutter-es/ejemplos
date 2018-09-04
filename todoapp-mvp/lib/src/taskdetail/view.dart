import 'package:flutter/material.dart';
import 'package:todomvp/src/domain/task.dart';
import 'package:todomvp/src/taskdetail/contract.dart';
import 'package:todomvp/src/taskdetail/presenter.dart';


class TaskDetailView extends StatefulWidget {
  final Task task;
  final VoidCallback onTaskDeleted;

  const TaskDetailView({Key key, @required this.task, this.onTaskDeleted})
      : super(key: key);

  @override
  State<TaskDetailView> createState() => _TaskDetailViewState();
}

class _TaskDetailViewState extends State<TaskDetailView> implements BaseTaskDetailView {
    BaseTaskDetailPresenter presenter;

    _TaskDetailViewState() {
      presenter = new TaskDetailPresenter(this);
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

}
