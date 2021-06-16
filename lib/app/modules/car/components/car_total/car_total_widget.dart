import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'car_total_store.dart';

class CarTotalWidget extends StatefulWidget {
  @override
  _CarTotalWidgetState createState() => _CarTotalWidgetState();
}

class _CarTotalWidgetState extends State<CarTotalWidget> {
    final CarTotalStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total Carrinho:"),
              Observer(builder: (BuildContext context) {
                return Text(
                    "R\$ ${store.total.toStringAsFixed(2).replaceAll(".", ",")}");
              })
            ],
          )
        ],
      ),
    );
  }
}
