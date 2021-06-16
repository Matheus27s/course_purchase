import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'payment_success_store.dart';

class PaymentSuccessPage extends StatefulWidget {
  final String title;
  const PaymentSuccessPage({Key? key, this.title = "Pagamento Sucesso"})
      : super(key: key);

  @override
  _PaymentSuccessPageState createState() => _PaymentSuccessPageState();
}

class _PaymentSuccessPageState extends State<PaymentSuccessPage> {
  final PaymentSuccessStore store = Modular.get();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Pagamento Finalizado com sucesso ${store.model.name}!!!",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30),
          ),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              child: Text("Continuar Comprando"),
              onPressed: () {
                Modular.to.popUntil(ModalRoute.withName("/"));
              },
            ),
          ),
        ],
      ),
    );
  }
}
