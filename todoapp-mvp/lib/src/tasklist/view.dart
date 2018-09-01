import 'package:flutter/material.dart';

import '../data/task.dart';
import './contract.dart';
import './presenter.dart';
import '../taskdetail/view.dart';

import './widgets/taskaddeddialog.dart';
import './widgets/taskwidget.dart';

class TaskList extends StatefulWidget {
  final String appBarTitle;

  const TaskList({Key key, this.appBarTitle}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> implements BaseTaskListView {
  Widget body;
  BaseTaskListPresenter presenter;

  final GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

  _TaskListState() {
    new TaskListPresenter(this);
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
        key: _scaffoldState,
        appBar: createAppBar(),
        body: body,
        floatingActionButton: createFloatingButton());
  }

  @override
  void setPresenter(BaseTaskListPresenter presenter) {
    this.presenter = presenter;
  }

  @override
  void showTasks(List<Task> tasks) {
    setState(() {
      if (tasks.length > 0) {
        body = createListView(tasks);
      } else {
        body = createAppBar();
      }
    });
  }

  @override
  void showEmptyMessage() {
    setState(() {
      body = createEmptyBody();
    });
  }

  @override
  void showUpdatedDoneMessage(String msg) {
    _scaffoldState.currentState.showSnackBar(SnackBar(
      content: Text(msg),
      action: SnackBarAction(label: 'OK', onPressed: () {}),
    ));
  }

  @override
  void showAlertErrorMessage(String error) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Internal Error'),
            content: Text(error),
            actions: <Widget>[
              FlatButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }

  Widget createListView(List<Task> tasks) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return TaskWidget(
          task: tasks[index],
          onUpdateTask: (Task task) {
            presenter.updateTask(task);
            presenter.getTasks();
          },
          onTaskCallback: (Task task) {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext context) {
              return TaskDetailView(
                task: task,
                db: (presenter as TaskListPresenter).db,
                onTaskDeleted: () {
                  presenter.getTasks();
                },
              );
            }));
          },
        );
      },
      itemCount: tasks.length,
    );
  }

  Widget createAppBar() {
    return AppBar(
      title: Text(widget.appBarTitle),
      actions: <Widget>[
        IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              presenter.removeAllTasks();
              presenter.getTasks();
            })
      ],
    );
  }

  FloatingActionButton createFloatingButton() {
    return FloatingActionButton(
        backgroundColor: Colors.pink,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          showDialog(
              context: context,
              barrierDismissible: false,
              builder: (BuildContext c) {
                return TaskAdderDialog(
                  onAddCallback: (String short, String long) {
                    presenter.addTask(Task()
                      ..done = false
                      ..shortDescription = short
                      ..description = long);

                    presenter.getTasks();
                  },
                );
              });
        });
  }

  Widget createEmptyBody() {
    return Center(
      child: Text(
        'Empty list',
        style: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
            fontSize: 20.0),
      ),
    );
  }
}
