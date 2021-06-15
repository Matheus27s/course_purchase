import 'package:course_purchase/app/shared/store/car_store/car_store.dart';
import 'package:mobx/mobx.dart';

part 'courseDetails_store.g.dart';

class CourseDetailsStore = _CourseDetailsStoreBase with _$CourseDetailsStore;
abstract class _CourseDetailsStoreBase with Store {
  final CarStore _carStore;

    _CourseDetailsStoreBase(this._carStore);

    void addCourseInCar(courseModel) {
      _carStore.addCourseInCar(courseModel);
    } 
}