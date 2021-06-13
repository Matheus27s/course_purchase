import 'package:course_purchase/app/modules/session/session_store.dart';
import 'package:course_purchase/app/shared/store/user_session_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'session_page.dart';

class SessionModule extends Module {

  @override
  final List<Bind> binds = [
    Bind((i) => SessionStore(i.get<UserSessionStore>())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => SessionPage()),
  ];
}

