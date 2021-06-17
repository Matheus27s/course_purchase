import 'package:course_purchase/app/modules/payment/model/payment_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../payment_store.dart';

part 'card_data_store.g.dart';

class CardDataStore = _CardDataStoreBase with _$CardDataStore;

abstract class _CardDataStoreBase extends Disposable with Store {
  final PaymentStore _paymentStore;
  _CardDataStoreBase(this._paymentStore);

  @computed
  PaymentModel get model => _paymentStore.paymentModel;

  var cardInput = TextEditingController();
  var cvvInput = TextEditingController();

  @action
  void nextPage() {
    model.cardModel.number = cardInput.text;
    model.cardModel.cvv = cvvInput.text;

    print(model.cardModel.number);
    print(model.cardModel.cvv);

    print(model.name);

    if (model.cardModel.number != "" &&
        model.cardModel.cvv != "" &&
        model.name != "") {
      Modular.to.pushNamed("success", arguments: model);
    } else {
      print("Todos os dados precisam ser inseridos");
    }
  }

  @override
  void dispose() {
    cardInput.dispose();
    cvvInput.dispose();
  }
}
