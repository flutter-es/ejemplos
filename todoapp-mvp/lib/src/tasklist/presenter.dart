import 'package:todomvp/src/domain/task.dart';
import 'package:todomvp/src/services/repository.dart';
import 'package:todomvp/src/services/taskRepository.dart';
import './contract.dart';


class TaskListPresenter implements BaseTaskListPresenter {
  BaseTaskListView view;
  Repository taskRepository;

  TaskListPresenter(BaseTaskListView view) {
    this.view = view;
    this.taskRepository = new TaskRepository();
  }

  @override
  void initPresenter() async {
    await taskRepository.initialize();
    getTasks();
  }

  @override
  void dispose() {
    taskRepository.dispose();
  }

  @override
  void addTask(Task task) {
    this.taskRepository.insert(task, (Task task) {
      this.view.showTasks([task]);
    }, (err) {
      this.view.showAlertErrorMessage('SQL syntax error');
    });
  }

  @override
  void getTasks() {
    this.taskRepository.getAll((List<Task> tasks) {
      this.view.showTasks(tasks);
    }, (error) {
      if ('$error'.length == 0) {
        this.view.showEmptyMessage();
      } else {
        this.view.showEmptyMessage();
        this.view.showAlertErrorMessage('SQL syntax error');
      }
    });
  }

  @override
  void removeAllTasks() {
    this.taskRepository.deleteAll(() {
      // no se hace nada
    }, (err) {
      this.view.showAlertErrorMessage('SQL syntax error');
    });
  }

  @override
  void updateTask(Task task) {
    this.taskRepository.update(task, (Task task) {
      String tmp = task.done ? 'complete' : 'not complete';
      this.view.showUpdatedDoneMessage(
          'Task ${task..shortDescription} is market as $tmp');
    }, (err) {
      print('$err');
      this.view.showAlertErrorMessage('SQL syntax error');
    });
  }
}
