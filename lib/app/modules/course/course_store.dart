import 'package:course_purchase/app/shared/store/user_session_store.dart';
import 'package:mobx/mobx.dart';

import 'model/course_model.dart';
import 'repository/course_repository.dart';

part 'course_store.g.dart';

class CourseStore = _CourseStoreBase with _$CourseStore;

abstract class _CourseStoreBase with Store {
  final UserSessionStore _userSessionStore;
  final CourseRepository courseRepository;

  _CourseStoreBase(this._userSessionStore, this.courseRepository) {
    init();
  }

  @computed
  bool get isLogged => _userSessionStore.isLogged;

  @observable
  ObservableList<CourseModel> courses = new ObservableList<CourseModel>();

  @action
  Future init() async {
    courses = (await courseRepository.coursesList()).asObservable();
  }
}
