import 'package:course_purchase/app/modules/course/model/course_model.dart';
import 'package:course_purchase/app/shared/model/car_model/car_model.dart';
import 'package:mobx/mobx.dart';
part 'car_store.g.dart';

class CarStore = _CarStoreBase with _$CarStore;

abstract class _CarStoreBase with Store {
  var coursesInCar = ObservableList<CarModel>();

  @action
  void addCourseInCar(CourseModel courseModel) {
    var index = coursesInCar.indexWhere((element) => element.courseModel.id == courseModel.id);

    if (index >= 0) {
      print('Esse item já existena lista');
      return;

    } else {
      coursesInCar.add(CarModel(courseModel));
    }
  }

  @action
  void removeCourseInCar(CourseModel courseModel) {
    coursesInCar.removeWhere((element) => element.courseModel == courseModel);
  }

  @computed
  double get total => coursesInCar
      .map((item) => double.parse(item.courseModel.price.replaceAll(',', '.')))
      .reduce((value, element) => value + element);
}
