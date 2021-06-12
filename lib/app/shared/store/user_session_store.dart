import 'package:course_purchase/app/shared/model/user.dart';
import 'package:mobx/mobx.dart';

part 'user_session_store.g.dart';

class UserSessionStore = _UserSessionStore with _$UserSessionStore;

abstract class _UserSessionStore with Store {
  @observable
  User user = new User();

  @action
  void setUserSession(User value) => user = value;

  @computed
  bool get isLogged => user.email != "" && user.password != "";
  
}