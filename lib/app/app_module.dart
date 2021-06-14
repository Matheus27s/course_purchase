import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'app_widget.dart';
import 'modules/course/course_module.dart';
import 'modules/session/session_module.dart';
import 'shared/store/user_session_store.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => UserSessionStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: SessionModule()),
    ModuleRoute('/course', module: CourseModule()),
  ];

    Widget get bootstrap => AppWidget();
}
