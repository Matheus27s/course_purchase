import 'package:course_purchase/app/modules/payment/payment_store.dart';
import 'package:course_purchase/app/shared/store/user_session_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'pages/card_data/card_data_page.dart';
import 'pages/card_data/card_data_store.dart';
import 'pages/payment_success/payment_success_page.dart';
import 'pages/payment_success/payment_success_store.dart';
import 'payment_page.dart';

class PaymentModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => CardDataStore(i.get<PaymentStore>())),
    Bind((i) => PaymentSuccessStore(i.get<PaymentStore>())),
    
    Bind((i) => PaymentStore(i.get<UserSessionStore>())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => PaymentPage()),
    ChildRoute('pages/card', child: (_, args) => CardDataPage()),
    ChildRoute('pages/success', child: (_, args) => PaymentSuccessPage()),
  ];
}
