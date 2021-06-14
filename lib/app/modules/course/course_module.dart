import 'package:course_purchase/app/modules/course/course_store.dart';
import 'package:course_purchase/app/shared/store/user_session_store.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'course_page.dart';
import 'repository/course_repository.dart';

class CourseModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => CourseRepository(Dio())),
    Bind((i) => CourseStore(i.get<UserSessionStore>(), i.get<CourseRepository>())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => CoursePage()),
  ];
}
