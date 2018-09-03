
/// Presentador base encargado de conectar la [vista]
/// base con el [modelo].
abstract class BasePresenter {

  /// Inicializa o crear todas las conexiones
  /// a base de datos, websockets, servidores http, ftp
  /// entre otros.
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

  /// Cierra las conexiones a bases de datos, websockets,
  /// etc... y así liberar recursos del sistema.
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
