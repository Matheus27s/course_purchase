import 'package:course_purchase/app/shared/store/car_store/car_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

import 'components/car_courses_list/car_courses_list_widget.dart';

class CarPage extends StatefulWidget {
  final String title;
  const CarPage({Key? key, this.title = 'CarPage'}) : super(key: key);
  @override
  CarPageState createState() => CarPageState();
}
class CarPageState extends State<CarPage> {
  final CarStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carrinho de Compras"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            CarCoursesListWidget(),
            Divider(),
            Divider(),
            Container(
              height: 40,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Modular.to.pushNamed("/pagamento");
                },
                child: Text("Ir para Pagamento"),
              ),
            )
          ],
        ),
      ),
    );
  }
}

/*

import 'package:course_purchase/app/shared/store/car_store/car_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

import 'components/car_courses_list/car_courses_list_widget.dart';

class CarPage extends StatefulWidget {
  final String title;
  const CarPage({Key? key, this.title = 'CarPage'}) : super(key: key);
  @override
  CarPageState createState() => CarPageState();
}
class CarPageState extends State<CarPage> {
  final CarStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carrinho de Compras"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            CarCoursesListWidget(),
            Divider(),
            Divider(),
            Container(
              height: 40,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Modular.to.pushNamed("/pagamento");
                },
                child: Text("Ir para Pagamento"),
              ),
            )
          ],
        ),
      ),
    );
  }
}

 */