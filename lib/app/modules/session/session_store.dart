import 'package:course_purchase/app/shared/model/user_model/user_model.dart';
import 'package:course_purchase/app/shared/store/user_session_store.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'session_store.g.dart';

class SessionStore = _SessionStoreBase with _$SessionStore;

abstract class _SessionStoreBase with Store {
  final UserSessionStore _userSessionStore;

  _SessionStoreBase(this._userSessionStore);

  var email = TextEditingController();
  var password = TextEditingController();
  var isLoggedSessionPage = true;

  @action
  bool validate() {
    if (email.text != "" && password.text != "") {
      signIn();
      return true;
    } else {
      print(false);
      return false;
    }
  }

  @action
  void signIn() {
    if (email.text != "" && password.text != "") {
      UserModel user = UserModel();

      user.email = email.text;
      user.password = password.text;
      _userSessionStore.setUserSession(user);
    } else {
      print('Erro ao tentar logar');
    }
  }

  void dispose() {
    email.dispose();
    password.dispose();
  }
}
