

import 'package:todomvp/src/domain/const.dart';

/// El objeto [Task] representa de forma
/// abstracta a las tareas que son agregadas, borradas
/// actualizadas, etc.
class Task {
  int id;
  bool done;
  String description;
  String shortDescription;

  Map<String, dynamic> toJson() {
    Map<String, dynamic> task = Map<String, dynamic>();
    task[TaskConstants.DONE] = done ? 1 : 0;
    task[TaskConstants.ID] = id;
    task[TaskConstants.DESCRIPTION] = description;
    task[TaskConstants.SHORT_DESCRIPTION] = shortDescription;

    return task;
  }

  static Task fromJson(Map<String, dynamic> json) {
    return Task()
      ..done = (json[TaskConstants.DONE] as int) == 0 ? false : true
      ..description = (json[TaskConstants.DESCRIPTION] as String)
      ..shortDescription = (json[TaskConstants.SHORT_DESCRIPTION] as String)
      ..id = (json[TaskConstants.ID] as int);
  }
}
