
/// Presentador base encargado de conectar la [vista]
/// base con el [modelo].
abstract class BasePresenter {

  /// Inicializa las dependencias necesarias para el presenter.
  ///
  /// Este método debe ser llamado desde la [vista], dentro del
  /// método [initState].
  ///
  /// Ejemplo de uso:
  ///
  /// @override
  /// void initState() {
  ///    super.initState();
  ///    presenter.initPresenter();
  /// }
  void initPresenter();

  /// Libera los recursos asociados al presenter.
  ///
  /// Este método debe ser llamado desde la [vista], dentro del
  /// método [dispose].
  ///
  /// @override
  /// void dispose() {
  ///    super.dispose();
  ///    presenter.dispose();
  /// }
  void dispose();
}
