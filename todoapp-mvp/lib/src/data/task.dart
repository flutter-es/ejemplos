import '../db/const.dart';

class Task {
  int id;
  bool done;
  String description;
  String shortDescription;

  Map<String, dynamic> toJson() {
    Map<String, dynamic> task = Map<String, dynamic>();
    task[DatabaseConstants.DONE] = done ? 1 : 0;
    task[DatabaseConstants.ID] = id;
    task[DatabaseConstants.DESCRIPTION] = description;
    task[DatabaseConstants.SHORT_DESCRIPTION] = shortDescription;

    return task;
  }

  static Task fromJson(Map<String, dynamic> json) {
    return Task()
      ..done = (json[DatabaseConstants.DONE] as int) == 0 ? false : true
      ..description = (json[DatabaseConstants.DESCRIPTION] as String)
      ..shortDescription = (json[DatabaseConstants.SHORT_DESCRIPTION] as String)
      ..id = (json[DatabaseConstants.ID] as int);
  }
}
