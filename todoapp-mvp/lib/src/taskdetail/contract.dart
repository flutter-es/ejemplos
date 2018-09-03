import '../presenter.dart';
import '../view.dart';
import '../data/task.dart';

abstract class BaseTaskDetailPresenter extends BasePresenter {
  deleteTask(Task task);
}

abstract class BaseTaskDetailView extends BaseView<BaseTaskDetailPresenter> {}
