import 'package:course_purchase/app/modules/components/default_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'card_data_store.dart';

class CardDataPage extends StatefulWidget {
  final String title;
  const CardDataPage({Key? key, this.title = "Dados Pagamento"})
      : super(key: key);

  @override
  _CardDataPageState createState() => _CardDataPageState();
}

class _CardDataPageState extends State<CardDataPage> {
  final CardDataStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    double getProportionateScreenHeight(double inputHeight) {
      double height = queryData.size.height;
      return (inputHeight / 812.0) * height;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: store.cardInput,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    new LengthLimitingTextInputFormatter(16),
                  ],
                  decoration: InputDecoration(labelText: "Cartao"),
                ),
                SizedBox(height: getProportionateScreenHeight(30)),
                TextFormField(
                  controller: store.cvvInput,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    new LengthLimitingTextInputFormatter(3),
                  ],
                  decoration: InputDecoration(labelText: "CVV"),
                ),
                SizedBox(height: getProportionateScreenHeight(30)),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            child: DefaultButton(
              text: "Finalizar pagamento",
              press: () {
                store.nextPage();
              },
            ),
          ),
        ],
      ),
    );
  }
}
