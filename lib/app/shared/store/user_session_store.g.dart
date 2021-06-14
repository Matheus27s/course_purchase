// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_session_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserSessionStore on _UserSessionStoreBase, Store {
  Computed<bool>? _$isLoggedComputed;

  @override
  bool get isLogged =>
      (_$isLoggedComputed ??= Computed<bool>(() => super.isLogged,
              name: '_UserSessionStoreBase.isLogged'))
          .value;

  final _$userAtom = Atom(name: '_UserSessionStoreBase.user');

  @override
  UserModel get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(UserModel value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  final _$_UserSessionStoreBaseActionController =
      ActionController(name: '_UserSessionStoreBase');

  @override
  void setUserSession(UserModel value) {
    final _$actionInfo = _$_UserSessionStoreBaseActionController.startAction(
        name: '_UserSessionStoreBase.setUserSession');
    try {
      return super.setUserSession(value);
    } finally {
      _$_UserSessionStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
user: ${user},
isLogged: ${isLogged}
    ''';
  }
}
