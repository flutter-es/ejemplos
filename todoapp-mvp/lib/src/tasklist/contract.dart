import '../data/task.dart';
import '../presenter.dart';
import '../view.dart';

abstract class BaseTaskListPresenter extends BasePresenter {
  void addTask(Task task);
  void updateTask(Task task);
  void getTasks();
  void removeAllTasks();
}

abstract class BaseTaskListView extends BaseView<BaseTaskListPresenter> {
  void showTasks(List<Task> tasks);
  void showEmptyMessage();
  void showUpdatedDoneMessage(String msg);
  void showAlertErrorMessage(String error);
}
