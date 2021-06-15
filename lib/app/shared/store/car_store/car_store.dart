import 'package:course_purchase/app/modules/course/model/course_model.dart';
import 'package:course_purchase/app/shared/model/car_model/car_model.dart';
import 'package:mobx/mobx.dart';
part 'car_store.g.dart';

class CarStore = _CarStoreBase with _$CarStore;

abstract class _CarStoreBase with Store {
  var courseInCar = ObservableList<CarModel>();

  void addCourseInCar(CourseModel courseModel) {
    var index = courseInCar.indexWhere((element) => element.courseModel.id == courseModel.id);
      courseInCar.add(CarModel(courseModel));
  }

  void removeCourseInCar(CourseModel courseModel) {
    var index = courseInCar.indexWhere((element) => element.courseModel.id == courseModel.id);
      courseInCar.remove(CarModel(courseModel));
  }

  @computed
  double get total => courseInCar
      .map((item) => double.parse(item.courseModel.price.replaceAll(',', '.')))
      .reduce((value, element) => value + element);
}
