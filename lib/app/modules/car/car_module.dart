import 'package:course_purchase/app/modules/car/components/car_courses_list/car_courses_list_store.dart';
import 'package:course_purchase/app/shared/store/car_store/car_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'car_page.dart';

class CarModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => CarCourseListStore(i.get<CarStore>())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => CarPage()),
  ];
}
