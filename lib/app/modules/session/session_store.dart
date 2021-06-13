import 'package:course_purchase/app/shared/model/user.dart';
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
      User user = User();

      user.email = email.text;
      user.password = password.text;

      print(email.text);
      print(password.text);

      print(user.email);

      _userSessionStore.setUserSession(user);
      //Modular.to.pushReplacementNamed("/");
    } else {
      print('Erro ao tentar logar');
    }
  }

  void dispose() {
    email.dispose();
    password.dispose();
  }
}
