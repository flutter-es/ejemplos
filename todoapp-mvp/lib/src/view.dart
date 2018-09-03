import './presenter.dart';

abstract class BaseView<P extends BasePresenter> {
  void setPresenter(P presenter);
}
