import 'package:course_purchase/app/shared/store/car_store/car_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants.dart';
import 'components/car_courses_list/check_out_card.dart';

class CarPage extends StatefulWidget {
  const CarPage();
  @override
  CarPageState createState() => CarPageState();
}

class CarPageState extends State<CarPage> {
  final CarStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    double total = 0;

    try {
      store.total;
      total = store.total;
    } catch (err) {
      total = 0;
    }

    return Scaffold(
      appBar: buildAppBar(context),
      body: total != 0
          ? Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: ListView.builder(
                itemCount: store.itemCount(),
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Dismissible(
                    key: Key(
                        store.coursesInCar[index].courseModel.id.toString()),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 100,
                          child: AspectRatio(
                            aspectRatio: 0.98,
                            child: Container(
                              padding: EdgeInsets.all(
                                10,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: NetworkImage(
                                      "${store.coursesInCar[index].courseModel.image}",
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              store.coursesInCar[index].courseModel.name,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                              maxLines: 2,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text.rich(
                              TextSpan(
                                text:
                                    "R\$ ${store.coursesInCar[index].courseModel.price}",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: kPrimaryColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 12),
                        IconButton(
                          onPressed: () => setState(() {
                            store.removeCourseInCar(
                                store.coursesInCar[index].courseModel);
                          }),
                          icon: SvgPicture.asset("assets/icons/Trash.svg"),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          : Container(
              child: Center(
                child: Text(
                  'Carrinho vazio',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ),
            ),
      bottomNavigationBar: total != 0
          ? CheckoutCard(
              total: total,
            )
          : Text(''),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Seu Carrinho",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
