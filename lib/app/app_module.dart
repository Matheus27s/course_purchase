import 'package:flutter_modular/flutter_modular.dart';
import 'modules/session/session_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: SessionModule()),
  ];
}