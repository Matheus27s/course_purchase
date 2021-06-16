import 'package:course_purchase/app/shared/model/car_model/car_model.dart';
import 'package:course_purchase/app/shared/store/car_store/car_store.dart';
import 'package:mobx/mobx.dart';


part 'car_courses_list_store.g.dart';

class CarCourseListStore = _CarCourseListStoreBase
    with _$CarCourseListStore;

abstract class _CarCourseListStoreBase with Store {
  final CarStore _carStore;

  _CarCourseListStoreBase(this._carStore);

  @computed
  ObservableList<CarModel> get courseList =>
      _carStore.coursesInCar;
}
