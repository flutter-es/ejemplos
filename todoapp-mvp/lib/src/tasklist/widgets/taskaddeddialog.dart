import 'package:flutter/material.dart';

typedef OnAddCallback(String short, String long);

class TaskAdderDialog extends StatefulWidget {
  final OnAddCallback onAddCallback;

  const TaskAdderDialog({Key key, @required this.onAddCallback})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _TaskAdderDialogState();
}

class _TaskAdderDialogState extends State<TaskAdderDialog> {
  final TextEditingController _longController = TextEditingController();
  final TextEditingController _shortController = TextEditingController();

  bool _add1 = false;
  bool _add2 = false;

  @override
  void dispose() {
    super.dispose();

    _longController.dispose();
    _shortController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    VoidCallback onAdd;
    if (_add1 && _add2) {
      onAdd = () {
        Navigator.of(context).pop();

        widget.onAddCallback(_shortController.text, _longController.text);
        _shortController.clear();
        _longController.clear();
      };
    }

    return SimpleDialog(
      title: Text('Add Task'),
      contentPadding: EdgeInsets.only(top: 10.0, bottom: 10.0),
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(right: 10.0, left: 10.0),
          child: Column(
            children: <Widget>[
              TextField(
                  maxLines: 1,
                  maxLength: 20,
                  autofocus: true,
                  controller: _shortController,
                  decoration: InputDecoration(
                    labelText: 'short description',
                  ),
                  onChanged: (String val) {
                    setState(() {
                      if (val.length > 0)
                        _add1 = true;
                      else
                        _add1 = false;
                    });
                  }),
              TextField(
                maxLines: 1,
                maxLength: 200,
                controller: _longController,
                decoration: InputDecoration(labelText: 'long description'),
                onChanged: (String val) {
                  setState(() {
                    if (val.length > 0)
                      _add2 = true;
                    else
                      _add2 = false;
                  });
                },
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FlatButton(
              textColor: Colors.pink,
                child: Text('Cancel'),
                onPressed: () {
                  _longController.clear();
                  _shortController.clear();

                  Navigator.of(context).pop();
                }),
            FlatButton(
              textColor: Colors.pink,
              child: Text('Add'),
              onPressed: onAdd,
            )
          ],
        )
      ],
    );
  }
}
