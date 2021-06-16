import 'package:course_purchase/app/modules/components/default_button.dart';
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
    MediaQueryData queryData = MediaQuery.of(context);

    double screenHeight = queryData.size.height;
    double screenwidth = queryData.size.width;

    double getProportionateScreenWidth(double inputWidth) {
      double width = queryData.size.width;
      return (inputWidth / 375.0) * width;
    }

    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: screenHeight * 0.04),
          Image.asset(
            "assets/images/success.png",
            height: screenHeight * 0.4, //40%
          ),
          SizedBox(height: screenHeight * 0.08),
          Text(
            "Compra efetuada com sucesso.",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(20),
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Text(
            "Obrigado pela preferência",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),
          Spacer(),
          SizedBox(
            width: screenwidth * 0.6,
            child: DefaultButton(
              text: "Voltar",
              press: () {
                Modular.to.pushNamed('/course');
              },
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
