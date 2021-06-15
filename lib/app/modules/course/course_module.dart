import 'package:course_purchase/app/modules/course/course_store.dart';
import 'package:course_purchase/app/shared/store/car_store/car_store.dart';
import 'package:course_purchase/app/shared/store/user_session_store.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'course_page.dart';
import 'pages/course_details/courseDetails_page.dart';
import 'pages/course_details/courseDetails_store.dart';
import 'repository/course_repository.dart';

class CourseModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => CourseRepository(Dio())),
    Bind((i) => CourseStore(i.get<UserSessionStore>(), i.get<CourseRepository>())),
    Bind((i) => CourseDetailsStore(i.get<CarStore>())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => CoursePage()),
    ChildRoute('pages/details', child: (_, args) => CourseDetailsPage(courseModel: args.data)),
  ];
}