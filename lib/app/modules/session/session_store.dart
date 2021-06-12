import 'package:mobx/mobx.dart';

part 'session_store.g.dart';

class SessionStore = _SessionStoreBase with _$SessionStore;
abstract class _SessionStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}