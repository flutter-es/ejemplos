import './presenter.dart';


/// Vista base encargada de pintar todos los datos que el
/// presentador le envía y pintar animaciones.
abstract class BaseView<P extends BasePresenter> {

  /// establece el presentador, el mismo tiene que
  /// heredar del BasePresenter, para que sea un
  /// presentador valido.
  void setPresenter(P presenter);
}
