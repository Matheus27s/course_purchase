import 'package:course_purchase/app/modules/payment/model/payment_model.dart';
import 'package:mobx/mobx.dart';

import '../../payment_store.dart';

part 'payment_success_store.g.dart';

class PaymentSuccessStore = _PaymentSuccessStoreBase with _$PaymentSuccessStore;

abstract class _PaymentSuccessStoreBase with Store {
  final PaymentStore _paymentStore;

  _PaymentSuccessStoreBase(this._paymentStore);

  @computed
  PaymentModel get model => _paymentStore.paymentModel;
}
