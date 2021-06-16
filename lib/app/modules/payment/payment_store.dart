import 'package:course_purchase/app/shared/store/user_session_store.dart';
import 'package:mobx/mobx.dart';

import 'model/payment_model.dart';

part 'payment_store.g.dart';

class PaymentStore = _PaymentStoreBase with _$PaymentStore;
abstract class _PaymentStoreBase with Store {
  final UserSessionStore _userSessionStore;

  _PaymentStoreBase(this._userSessionStore) {
    paymentModel = PaymentModel()..name = _userSessionStore.user.email;
  }

  PaymentModel paymentModel = new PaymentModel();
}