import 'package:mobx/mobx.dart';

part 'courseDetails_store.g.dart';

class CourseDetailsStore = _CourseDetailsStoreBase with _$CourseDetailsStore;
abstract class _CourseDetailsStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}