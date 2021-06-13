import 'package:course_purchase/app/shared/model/user.dart';
import 'package:mobx/mobx.dart';

part 'user_session_store.g.dart';

class UserSessionStore = _UserSessionStoreBase with _$UserSessionStore;

abstract class _UserSessionStoreBase with Store {
  @observable
  User user = User();

  @action
  void setUserSession(User value) => user = value;

  @computed
  bool get isLogged => user.email != "" && user.password != "";
  
}