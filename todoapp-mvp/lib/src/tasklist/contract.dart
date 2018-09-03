/// EL contract normalmente es el lugar donde
/// se definen las vistas y presentadores base
/// de cada widget.

import '../data/task.dart';
import '../presenter.dart';
import '../view.dart';

/// Va a definir los metodos que van a ser llamados desde
/// la vista, para agregar, actualizar, eliminar u obtener
/// las tareas del modelo.
abstract class BaseTaskListPresenter extends BasePresenter {
  
  /// Agrega una [tarea] a el modelo.
  void addTask(Task task);

  /// Actualiza una [tarea] del modelo
  void updateTask(Task task);

  /// obtiene todas las [tareas] del modelo
  void getTasks();

  /// elimina todas las tareas del modelo.
  void removeAllTasks();
}

/// Va a definir los metodos para mostrar o renderizar
/// datos y errores en la vista.
abstract class BaseTaskListView extends BaseView<BaseTaskListPresenter> {

  /// Este método es llamado por el presentador cuando
  /// ya ha obtenido los datos del modelo, para mostrarlos.
  void showTasks(List<Task> tasks);

  /// Este método es llamado cuando no hay tareas en la
  /// base de datos y cuando ha ocurrido algun error interno.
  void showEmptyMessage();

  /// Este método va a mostrar un [SnackBar] cuando
  /// se ha actualizado el estado de la tarea en la 
  /// base de datos.
  void showUpdatedDoneMessage(String msg);

  /// Este método va a mostrar un dialogo de error
  /// cuando exista algún error con la base de datos.
  void showAlertErrorMessage(String error);
}
