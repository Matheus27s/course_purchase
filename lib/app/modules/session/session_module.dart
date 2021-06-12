import 'package:course_purchase/app/modules/session/session_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'session_page.dart';

class SessionModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => SessionStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => SessionPage()),
  ];
}
