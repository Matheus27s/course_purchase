import 'package:course_purchase/app/shared/model/user_model/user_model.dart';
import 'package:mobx/mobx.dart';

part 'user_session_store.g.dart';

class UserSessionStore = _UserSessionStoreBase with _$UserSessionStore;

abstract class _UserSessionStoreBase with Store {
  @observable
  UserModel user = UserModel();

  @action
  void setUserSession(UserModel value) => user = value;

  @computed
  bool get isLogged => user.email != "" && user.password != "";
  
}