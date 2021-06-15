import 'package:course_purchase/app/shared/store/car_store/car_store.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'app_widget.dart';
import 'modules/car/car_module.dart';
import 'modules/course/course_module.dart';
import 'modules/session/session_module.dart';
import 'shared/store/user_session_store.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => UserSessionStore()),
    Bind((i) => CarStore())
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: SessionModule()),
    ModuleRoute('/course', module: CourseModule()),
    ModuleRoute('/car', module: CarModule()),
  ];

  Widget get bootstrap => AppWidget();
}
