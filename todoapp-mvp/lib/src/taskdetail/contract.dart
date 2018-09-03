/// EL contract normalmente es el lugar donde
/// se definen las vistas y presentadores base
/// de cada widget.

import '../presenter.dart';
import '../view.dart';
import '../data/task.dart';


/// Va a definir los metodos que van a ser llamados desde
/// la vista, para agregar, actualizar, eliminar u obtener
/// las tareas del modelo.
abstract class BaseTaskDetailPresenter extends BasePresenter {

  /// Va a borrar una tarea de la base de datos.
  void deleteTask(Task task);
}

/// Va a definir los metodos para mostrar o renderizar
/// datos y errores en la vista.
abstract class BaseTaskDetailView extends BaseView<BaseTaskDetailPresenter> {}
