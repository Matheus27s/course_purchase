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
    MediaQueryData queryData = MediaQuery.of(context);
    double getProportionateScreenHeight(double inputHeight) {
      double height = queryData.size.height;
      return (inputHeight / 812.0) * height;
    }

    double getProportionateScreenWidth(double inputWidth) {
      double width = queryData.size.width;
      return (inputWidth / 375.0) * width;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Pagamento"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(children: [
              Text(
                "Escolha a forma de pagamento",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(height: 16),
              DefaultButton(
                text: "Cartão de crédito",
                press: () {
                  Modular.to.pushNamed("pages/card", arguments: PaymentModel());
                },
              ),
              SizedBox(height: 16),
              DefaultButton(
                text: "Gerar boleto",
                press: () {
                  Modular.to.pushNamed("pages/success");
                },
              ),
            ]),
          ],
        ),
      ),
    );
    ;
  }
}
