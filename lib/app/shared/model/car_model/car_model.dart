import 'package:course_purchase/app/modules/course/model/course_model.dart';
import 'package:mobx/mobx.dart';
part 'car_model.g.dart';

class CarModel = _CarModelBase with _$CarModel;

abstract class _CarModelBase with Store {
  final CourseModel courseModel;

  _CarModelBase(this.courseModel);
}
