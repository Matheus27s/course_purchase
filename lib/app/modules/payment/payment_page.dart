import 'package:course_purchase/app/modules/components/default_button.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:course_purchase/app/modules/payment/payment_store.dart';
import 'package:flutter/material.dart';

import 'model/payment_model.dart';

class PaymentPage extends StatefulWidget {
  final String title;
  const PaymentPage({Key? key, this.title = 'PaymentPage'}) : super(key: key);
  @override
  PaymentPageState createState() => PaymentPageState();
}

class PaymentPageState extends State<PaymentPage> {
  final PaymentStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagamento"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Vamos Precisar de mais Alguns dados!",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "Data"),
            ),
            Container(
              width: double.infinity,
              child: DefaultButton(
                text: "Dados do cartão",
                press: () {
                  Modular.to.pushNamed("pages/card", arguments: PaymentModel());
                },
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
